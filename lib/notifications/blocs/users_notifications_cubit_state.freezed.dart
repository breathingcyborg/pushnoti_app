// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_notifications_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersNotificationsCubitState {
  IList<UsersNotification> get notifications =>
      throw _privateConstructorUsedError;
  bool get initialLoading => throw _privateConstructorUsedError;
  bool get newLoading => throw _privateConstructorUsedError;
  bool get oldLoading => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersNotificationsCubitStateCopyWith<UsersNotificationsCubitState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersNotificationsCubitStateCopyWith<$Res> {
  factory $UsersNotificationsCubitStateCopyWith(
          UsersNotificationsCubitState value,
          $Res Function(UsersNotificationsCubitState) then) =
      _$UsersNotificationsCubitStateCopyWithImpl<$Res,
          UsersNotificationsCubitState>;
  @useResult
  $Res call(
      {IList<UsersNotification> notifications,
      bool initialLoading,
      bool newLoading,
      bool oldLoading,
      bool hasReachedEnd});
}

/// @nodoc
class _$UsersNotificationsCubitStateCopyWithImpl<$Res,
        $Val extends UsersNotificationsCubitState>
    implements $UsersNotificationsCubitStateCopyWith<$Res> {
  _$UsersNotificationsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? initialLoading = null,
    Object? newLoading = null,
    Object? oldLoading = null,
    Object? hasReachedEnd = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as IList<UsersNotification>,
      initialLoading: null == initialLoading
          ? _value.initialLoading
          : initialLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newLoading: null == newLoading
          ? _value.newLoading
          : newLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      oldLoading: null == oldLoading
          ? _value.oldLoading
          : oldLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersNotificationsCubitStateImplCopyWith<$Res>
    implements $UsersNotificationsCubitStateCopyWith<$Res> {
  factory _$$UsersNotificationsCubitStateImplCopyWith(
          _$UsersNotificationsCubitStateImpl value,
          $Res Function(_$UsersNotificationsCubitStateImpl) then) =
      __$$UsersNotificationsCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IList<UsersNotification> notifications,
      bool initialLoading,
      bool newLoading,
      bool oldLoading,
      bool hasReachedEnd});
}

/// @nodoc
class __$$UsersNotificationsCubitStateImplCopyWithImpl<$Res>
    extends _$UsersNotificationsCubitStateCopyWithImpl<$Res,
        _$UsersNotificationsCubitStateImpl>
    implements _$$UsersNotificationsCubitStateImplCopyWith<$Res> {
  __$$UsersNotificationsCubitStateImplCopyWithImpl(
      _$UsersNotificationsCubitStateImpl _value,
      $Res Function(_$UsersNotificationsCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? initialLoading = null,
    Object? newLoading = null,
    Object? oldLoading = null,
    Object? hasReachedEnd = null,
  }) {
    return _then(_$UsersNotificationsCubitStateImpl(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as IList<UsersNotification>,
      initialLoading: null == initialLoading
          ? _value.initialLoading
          : initialLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newLoading: null == newLoading
          ? _value.newLoading
          : newLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      oldLoading: null == oldLoading
          ? _value.oldLoading
          : oldLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UsersNotificationsCubitStateImpl
    implements _UsersNotificationsCubitState {
  _$UsersNotificationsCubitStateImpl(
      {required this.notifications,
      required this.initialLoading,
      required this.newLoading,
      required this.oldLoading,
      required this.hasReachedEnd});

  @override
  final IList<UsersNotification> notifications;
  @override
  final bool initialLoading;
  @override
  final bool newLoading;
  @override
  final bool oldLoading;
  @override
  final bool hasReachedEnd;

  @override
  String toString() {
    return 'UsersNotificationsCubitState(notifications: $notifications, initialLoading: $initialLoading, newLoading: $newLoading, oldLoading: $oldLoading, hasReachedEnd: $hasReachedEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersNotificationsCubitStateImpl &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            (identical(other.initialLoading, initialLoading) ||
                other.initialLoading == initialLoading) &&
            (identical(other.newLoading, newLoading) ||
                other.newLoading == newLoading) &&
            (identical(other.oldLoading, oldLoading) ||
                other.oldLoading == oldLoading) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notifications),
      initialLoading,
      newLoading,
      oldLoading,
      hasReachedEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersNotificationsCubitStateImplCopyWith<
          _$UsersNotificationsCubitStateImpl>
      get copyWith => __$$UsersNotificationsCubitStateImplCopyWithImpl<
          _$UsersNotificationsCubitStateImpl>(this, _$identity);
}

abstract class _UsersNotificationsCubitState
    implements UsersNotificationsCubitState {
  factory _UsersNotificationsCubitState(
      {required final IList<UsersNotification> notifications,
      required final bool initialLoading,
      required final bool newLoading,
      required final bool oldLoading,
      required final bool hasReachedEnd}) = _$UsersNotificationsCubitStateImpl;

  @override
  IList<UsersNotification> get notifications;
  @override
  bool get initialLoading;
  @override
  bool get newLoading;
  @override
  bool get oldLoading;
  @override
  bool get hasReachedEnd;
  @override
  @JsonKey(ignore: true)
  _$$UsersNotificationsCubitStateImplCopyWith<
          _$UsersNotificationsCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
