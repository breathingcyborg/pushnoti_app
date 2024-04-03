
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pushnoti_app/app/models/app.dart';

part 'users_notification.freezed.dart';
part 'users_notification.g.dart';

@JsonEnum()
enum NotificationPriority {
  @JsonValue('standard')
  standard,

  @JsonValue('high')
  high,
  
  @JsonValue('urgent')
  urgent,
}

@freezed
class UsersNotification with _$UsersNotification {
  factory UsersNotification({
    required String id,
    required String userId,
    required String appId,
    required String title,
    required NotificationPriority priority,
    required App app,
    required String createdAt,
    required String updatedAt,
    String? readAt,
    String? message,
    String? image,
  }) = _UsersNotification;
	
  factory UsersNotification.fromJson(Map<String, dynamic> json) =>
			_$UsersNotificationFromJson(json);
}
