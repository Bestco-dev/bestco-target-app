import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/extensions/datetime.dart';
import '../../../domain/entities/date_range/date_range.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/entities/visit/visit.dart';
import '../../../domain/use_cases/visits/load_visits_use_case.dart';

Timer? _checkTypingTimer;

void runCalenderFilter(WidgetRef ref, DateRangeModel range) {

  ref.read(visitsCalenderViewModelProvider(range).notifier).load();
  // _checkTypingTimer?.cancel();
  // _checkTypingTimer = Timer(const Duration(seconds: 3), () {
  //   print("call");
  //   ref.read(visitsCalenderViewModelProvider(range).notifier).load();
  // });
  // return
}

final visitsCalenderViewModelProvider = StateNotifierProvider.family<
    VisitsViewModel, UiState<List<VisitModel>>, DateRangeModel>(
  (ref, range) {
    return VisitsViewModel(
      ref: ref,
      dateRange: range,
    );
  },
);
final visitsWhatsComingViewModelProvider =
    StateNotifierProvider<VisitsViewModel, UiState<List<VisitModel>>>(
  (ref) {
    DateTime now = DateTime.now();

    return VisitsViewModel(
      ref: ref,
      dateRange: DateRangeModel(
        startDate: now,
        endDate: DateTime(now.year, now.month, now.day + 14),
      ),
    );
  },
);

final visitsResentViewModelProvider =
    StateNotifierProvider<VisitsViewModel, UiState<List<VisitModel>>>(
  (ref) {
    DateTime now = DateTime.now();
    return VisitsViewModel(
      ref: ref,
      dateRange: DateRangeModel(
        endDate: now,
        startDate: DateTime(now.year, now.month - 3, now.day),
      ),
    );
  },
);

class VisitsViewModel extends StateNotifier<UiState<List<VisitModel>>> {
  final Ref ref;
  final DateRangeModel dateRange;

  VisitsViewModel({required this.dateRange, required this.ref})
      : super(const UiState.initial());
  load() async {
    print("Date range is ....");
    print(dateRange.toString());
    state = const UiState.loading();
    // await Future.delayed(const Duration(seconds: 1));
    final result = await ref
        .read(loadVisitUseCaseProvider)
        .call(ReqParam(url: "/visits", data: {
          "start_date": dateRange.getStartDate.toServerSting,
          "end_date": dateRange.getEndDate.toServerSting,
        }));

    result.when(success: (data) {
      state = UiState.data(data: data);
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }
}
