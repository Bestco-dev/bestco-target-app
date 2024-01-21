// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../../../../domain/entities/req_param/req_param.dart';
// import '../../../../domain/entities/system/system.dart';
// import '../../../../domain/entities/user/user.dart';
// import '../../../../domain/use_cases/auth/auth_use_case.dart';
// import '../../../../domain/use_cases/base.dart';
//
// final visitProceedConfirm = StateNotifierProvider.autoDispose
//     .family<_AudioFileLoading, AsyncValue<bool>, List<SystemModel>>(
//         (ref, systems) {
//   return _AudioFileLoading(systems, ref.read(authUseCaseProvider));
// });
//
// class _AudioFileLoading extends StateNotifier<AsyncValue<bool>> {
//   final List<SystemModel> _systems;
//   final BaseUseCase<UserEntity> _useCase;
//
//   _AudioFileLoading(this._systems, this._useCase)
//       : super(const AsyncValue.data(false));
//
//   void confirm() async {
//     state = const AsyncValue.loading();
//     final result = await _useCase.call(ReqParam(url: "Load"));
//     result.maybeWhen(
//       orElse: () {
//         state = const AsyncValue.data(true);
//       },
//       error: (error) {
//         AsyncValue.error(error.msg, StackTrace.current);
//       },
//       data: (data) {
//         state = const AsyncValue.data(true);
//       },
//     );
//   }
// }
