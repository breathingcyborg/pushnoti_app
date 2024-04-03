// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_tokens_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateFCMTokenRequest _$UpdateFCMTokenRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateFCMTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateFCMTokenRequest {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFCMTokenRequestCopyWith<UpdateFCMTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFCMTokenRequestCopyWith<$Res> {
  factory $UpdateFCMTokenRequestCopyWith(UpdateFCMTokenRequest value,
          $Res Function(UpdateFCMTokenRequest) then) =
      _$UpdateFCMTokenRequestCopyWithImpl<$Res, UpdateFCMTokenRequest>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$UpdateFCMTokenRequestCopyWithImpl<$Res,
        $Val extends UpdateFCMTokenRequest>
    implements $UpdateFCMTokenRequestCopyWith<$Res> {
  _$UpdateFCMTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFCMTokenRequestImplCopyWith<$Res>
    implements $UpdateFCMTokenRequestCopyWith<$Res> {
  factory _$$UpdateFCMTokenRequestImplCopyWith(
          _$UpdateFCMTokenRequestImpl value,
          $Res Function(_$UpdateFCMTokenRequestImpl) then) =
      __$$UpdateFCMTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$UpdateFCMTokenRequestImplCopyWithImpl<$Res>
    extends _$UpdateFCMTokenRequestCopyWithImpl<$Res,
        _$UpdateFCMTokenRequestImpl>
    implements _$$UpdateFCMTokenRequestImplCopyWith<$Res> {
  __$$UpdateFCMTokenRequestImplCopyWithImpl(_$UpdateFCMTokenRequestImpl _value,
      $Res Function(_$UpdateFCMTokenRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$UpdateFCMTokenRequestImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFCMTokenRequestImpl implements _UpdateFCMTokenRequest {
  const _$UpdateFCMTokenRequestImpl({required this.token});

  factory _$UpdateFCMTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFCMTokenRequestImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'UpdateFCMTokenRequest(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFCMTokenRequestImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFCMTokenRequestImplCopyWith<_$UpdateFCMTokenRequestImpl>
      get copyWith => __$$UpdateFCMTokenRequestImplCopyWithImpl<
          _$UpdateFCMTokenRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFCMTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateFCMTokenRequest implements UpdateFCMTokenRequest {
  const factory _UpdateFCMTokenRequest({required final String token}) =
      _$UpdateFCMTokenRequestImpl;

  factory _UpdateFCMTokenRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateFCMTokenRequestImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$UpdateFCMTokenRequestImplCopyWith<_$UpdateFCMTokenRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
