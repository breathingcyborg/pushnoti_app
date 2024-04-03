// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserInfoState {
  User? get currentUser => throw _privateConstructorUsedError;
  String? get currentUserNotimail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoStateCopyWith<UserInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoStateCopyWith<$Res> {
  factory $UserInfoStateCopyWith(
          UserInfoState value, $Res Function(UserInfoState) then) =
      _$UserInfoStateCopyWithImpl<$Res, UserInfoState>;
  @useResult
  $Res call({User? currentUser, String? currentUserNotimail});
}

/// @nodoc
class _$UserInfoStateCopyWithImpl<$Res, $Val extends UserInfoState>
    implements $UserInfoStateCopyWith<$Res> {
  _$UserInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
    Object? currentUserNotimail = freezed,
  }) {
    return _then(_value.copyWith(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      currentUserNotimail: freezed == currentUserNotimail
          ? _value.currentUserNotimail
          : currentUserNotimail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoStateImplCopyWith<$Res>
    implements $UserInfoStateCopyWith<$Res> {
  factory _$$UserInfoStateImplCopyWith(
          _$UserInfoStateImpl value, $Res Function(_$UserInfoStateImpl) then) =
      __$$UserInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? currentUser, String? currentUserNotimail});
}

/// @nodoc
class __$$UserInfoStateImplCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$UserInfoStateImpl>
    implements _$$UserInfoStateImplCopyWith<$Res> {
  __$$UserInfoStateImplCopyWithImpl(
      _$UserInfoStateImpl _value, $Res Function(_$UserInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
    Object? currentUserNotimail = freezed,
  }) {
    return _then(_$UserInfoStateImpl(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      currentUserNotimail: freezed == currentUserNotimail
          ? _value.currentUserNotimail
          : currentUserNotimail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserInfoStateImpl implements _UserInfoState {
  const _$UserInfoStateImpl(
      {required this.currentUser, required this.currentUserNotimail});

  @override
  final User? currentUser;
  @override
  final String? currentUserNotimail;

  @override
  String toString() {
    return 'UserInfoState(currentUser: $currentUser, currentUserNotimail: $currentUserNotimail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoStateImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.currentUserNotimail, currentUserNotimail) ||
                other.currentUserNotimail == currentUserNotimail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentUser, currentUserNotimail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoStateImplCopyWith<_$UserInfoStateImpl> get copyWith =>
      __$$UserInfoStateImplCopyWithImpl<_$UserInfoStateImpl>(this, _$identity);
}

abstract class _UserInfoState implements UserInfoState {
  const factory _UserInfoState(
      {required final User? currentUser,
      required final String? currentUserNotimail}) = _$UserInfoStateImpl;

  @override
  User? get currentUser;
  @override
  String? get currentUserNotimail;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoStateImplCopyWith<_$UserInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
