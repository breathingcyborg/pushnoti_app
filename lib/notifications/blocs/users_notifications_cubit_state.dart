
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pushnoti_app/notifications/models/users_notification.dart';

part 'users_notifications_cubit_state.freezed.dart';

@freezed
class UsersNotificationsCubitState with _$UsersNotificationsCubitState {

  factory UsersNotificationsCubitState({
    required IList<UsersNotification> notifications,
    required bool initialLoading,
    required bool newLoading,
    required bool oldLoading,
    required bool hasReachedEnd,
  }) = _UsersNotificationsCubitState;

  factory UsersNotificationsCubitState.initial() => UsersNotificationsCubitState(
    notifications: IList(),
    initialLoading: false,
    newLoading: false,
    oldLoading: false,
    hasReachedEnd: false,
  );
}
