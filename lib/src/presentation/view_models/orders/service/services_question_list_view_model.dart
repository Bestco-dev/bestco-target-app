import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/data_sources/orders_service/remote_data_source.dart';
import '../../../../domain/entities/question_entity/question_entity.dart';
import '../../../../domain/entities/req_param/req_param.dart';
import '../../../../domain/entities/ui_state/ui_state.dart';
import '../../../custom_widgets/common/custom_progress_bar.dart';

final serviceQuestionsListViewModelProvider = StateNotifierProvider.family<
    ViewModel,
    UiState<List<QuestionEntity>>,
    int>((ref, id) => ViewModel(id, ref: ref));

class ViewModel extends StateNotifier<UiState<List<QuestionEntity>>> {
  final Ref ref;
  final int id;
  ViewModel(this.id, {required this.ref}) : super(const UiState.initial()) {
    load();
  }
  load() async {
    state = const UiState.loading();
    final result = await ref
        .read(ordersServicesRemoteDataSourceProvider)
        .loadQuestions(ReqParam());
    result.when(success: (data) {
      if (data.isEmpty) {
        state = const UiState.empty();
      } else {
        print("has data ${data.length}");

        state = UiState.data(data: data.toList());
      }
    }, failure: (error) {
      print("has error ${error.message}");
      state = UiState.error(error: error);
    });
  }

  addToUi(QuestionEntity order) {
    //72.167.49.96:8085
    state.maybeWhen(
      orElse: () {
        state = UiState.data(data: [order]);
      },
      data: (value) {
        state = UiState.data(data: value..insert(0, order));
      },
    );
  }

  updateToUi(QuestionEntity order) {
    state.maybeWhen(
      orElse: () {},
      data: (data) {
        state = UiState.data(data: [
          for (QuestionEntity item in data)
            if (item.id == order.id) order else item
        ]);
      },
    );
  }

  refresh() async {
    ProgressBar.show();
    final result = await ref
        .read(ordersServicesRemoteDataSourceProvider)
        .loadMainService(ReqParam());
    ProgressBar.hide();
    result.when(success: (data) {
      load();
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }

  List<QuestionEntity> get _data =>
      state.maybeWhen(data: (data) => data, orElse: () => []);
}
