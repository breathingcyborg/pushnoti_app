// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersNotificationImpl _$$UsersNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersNotificationImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      appId: json['appId'] as String,
      title: json['title'] as String,
      priority: $enumDecode(_$NotificationPriorityEnumMap, json['priority']),
      app: App.fromJson(json['app'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      readAt: json['readAt'] as String?,
      message: json['message'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$UsersNotificationImplToJson(
        _$UsersNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'appId': instance.appId,
      'title': instance.title,
      'priority': _$NotificationPriorityEnumMap[instance.priority]!,
      'app': instance.app,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'readAt': instance.readAt,
      'message': instance.message,
      'image': instance.image,
    };

const _$NotificationPriorityEnumMap = {
  NotificationPriority.standard: 'standard',
  NotificationPriority.high: 'high',
  NotificationPriority.urgent: 'urgent',
};
