// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../../../common/utils/exception/parser.dart';
// import '../../../domain/entities/req_param/req_param.dart';
// import '../../../domain/entities/response/response.dart';
// import '../../../domain/entities/ui_state/ui_state.dart';
// import '../../../domain/entities/visit/visit.dart';
// import '../../../domain/use_cases/visits/load_visits_use_case.dart';
//
// final todayVisitsViewModelProvider =
//     StateNotifierProvider<TodayVisitsViewModel, UiState<List<VisitModel>>>(
//         (ref) => TodayVisitsViewModel(ref: ref));
//
// class TodayVisitsViewModel extends StateNotifier<UiState<List<VisitModel>>> {
//   final Ref ref;
//
//   TodayVisitsViewModel({required this.ref}) : super(const UiState.initial());
//
//   Future<bool> load() async {
//     state = const UiState.loading();
//     final result = await ref
//         .read(loadVisitUseCaseProvider)
//         .call(ReqParam(url: "/visits"))
//         .catchError((e, s) => ResponseState<List<VisitModel>>.error(
//             error: ExceptionParser.parse(e, stack: s)));
//
//     result.mapOrNull(data: (data) {
//       state = UiState.data(data: data.data);
//     }, error: (error) {
//       state = UiState.error(error: error.error);
//     });
//     return true;
//
//   }
// }
