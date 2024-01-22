import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/user/user.dart';

final userViewModelProvider =
    StateNotifierProvider<UserViewModel, UserEntity?>((ref) {
  return UserViewModel(null, ref);
});

class UserViewModel extends StateNotifier<UserEntity?> {
  final Ref reader;

  UserViewModel(
    UserEntity? state,
    this.reader,
  ) : super(state);

  void setUser(UserEntity user) => state = user;
  UserEntity? get getUser => state;

  bool get hasUser => state != null;

  set avatar(String avatar) => state = state?.copyWith(imageUrl: avatar);

  setInfo(String avatarUrl) => state = state?.copyWith(imageUrl: avatarUrl);

  info(UserEntity user) => state = state?.copyWith(
        name: user.name,
      );
}
