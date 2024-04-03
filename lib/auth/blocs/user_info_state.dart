import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_state.freezed.dart';

@freezed
abstract class UserInfoState with _$UserInfoState {
  const factory UserInfoState({
    required User? currentUser,
    required String? currentUserNotimail,
  }) = _UserInfoState;
}