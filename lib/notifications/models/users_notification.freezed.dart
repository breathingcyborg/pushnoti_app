// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersNotification _$UsersNotificationFromJson(Map<String, dynamic> json) {
  return _UsersNotification.fromJson(json);
}

/// @nodoc
mixin _$UsersNotification {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get appId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  NotificationPriority get priority => throw _privateConstructorUsedError;
  App get app => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get readAt => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersNotificationCopyWith<UsersNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersNotificationCopyWith<$Res> {
  factory $UsersNotificationCopyWith(
          UsersNotification value, $Res Function(UsersNotification) then) =
      _$UsersNotificationCopyWithImpl<$Res, UsersNotification>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String appId,
      String title,
      NotificationPriority priority,
      App app,
      String createdAt,
      String updatedAt,
      String? readAt,
      String? message,
      String? image});

  $AppCopyWith<$Res> get app;
}

/// @nodoc
class _$UsersNotificationCopyWithImpl<$Res, $Val extends UsersNotification>
    implements $UsersNotificationCopyWith<$Res> {
  _$UsersNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? appId = null,
    Object? title = null,
    Object? priority = null,
    Object? app = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? readAt = freezed,
    Object? message = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as App,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppCopyWith<$Res> get app {
    return $AppCopyWith<$Res>(_value.app, (value) {
      return _then(_value.copyWith(app: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UsersNotificationImplCopyWith<$Res>
    implements $UsersNotificationCopyWith<$Res> {
  factory _$$UsersNotificationImplCopyWith(_$UsersNotificationImpl value,
          $Res Function(_$UsersNotificationImpl) then) =
      __$$UsersNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String appId,
      String title,
      NotificationPriority priority,
      App app,
      String createdAt,
      String updatedAt,
      String? readAt,
      String? message,
      String? image});

  @override
  $AppCopyWith<$Res> get app;
}

/// @nodoc
class __$$UsersNotificationImplCopyWithImpl<$Res>
    extends _$UsersNotificationCopyWithImpl<$Res, _$UsersNotificationImpl>
    implements _$$UsersNotificationImplCopyWith<$Res> {
  __$$UsersNotificationImplCopyWithImpl(_$UsersNotificationImpl _value,
      $Res Function(_$UsersNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? appId = null,
    Object? title = null,
    Object? priority = null,
    Object? app = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? readAt = freezed,
    Object? message = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UsersNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as App,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersNotificationImpl implements _UsersNotification {
  _$UsersNotificationImpl(
      {required this.id,
      required this.userId,
      required this.appId,
      required this.title,
      required this.priority,
      required this.app,
      required this.createdAt,
      required this.updatedAt,
      this.readAt,
      this.message,
      this.image});

  factory _$UsersNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersNotificationImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String appId;
  @override
  final String title;
  @override
  final NotificationPriority priority;
  @override
  final App app;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String? readAt;
  @override
  final String? message;
  @override
  final String? image;

  @override
  String toString() {
    return 'UsersNotification(id: $id, userId: $userId, appId: $appId, title: $title, priority: $priority, app: $app, createdAt: $createdAt, updatedAt: $updatedAt, readAt: $readAt, message: $message, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, appId, title,
      priority, app, createdAt, updatedAt, readAt, message, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersNotificationImplCopyWith<_$UsersNotificationImpl> get copyWith =>
      __$$UsersNotificationImplCopyWithImpl<_$UsersNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersNotificationImplToJson(
      this,
    );
  }
}

abstract class _UsersNotification implements UsersNotification {
  factory _UsersNotification(
      {required final String id,
      required final String userId,
      required final String appId,
      required final String title,
      required final NotificationPriority priority,
      required final App app,
      required final String createdAt,
      required final String updatedAt,
      final String? readAt,
      final String? message,
      final String? image}) = _$UsersNotificationImpl;

  factory _UsersNotification.fromJson(Map<String, dynamic> json) =
      _$UsersNotificationImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get appId;
  @override
  String get title;
  @override
  NotificationPriority get priority;
  @override
  App get app;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String? get readAt;
  @override
  String? get message;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$UsersNotificationImplCopyWith<_$UsersNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
