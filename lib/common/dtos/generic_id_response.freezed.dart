// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenericIdResponse _$GenericIdResponseFromJson(Map<String, dynamic> json) {
  return _GenericIdResponse.fromJson(json);
}

/// @nodoc
mixin _$GenericIdResponse {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericIdResponseCopyWith<GenericIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericIdResponseCopyWith<$Res> {
  factory $GenericIdResponseCopyWith(
          GenericIdResponse value, $Res Function(GenericIdResponse) then) =
      _$GenericIdResponseCopyWithImpl<$Res, GenericIdResponse>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GenericIdResponseCopyWithImpl<$Res, $Val extends GenericIdResponse>
    implements $GenericIdResponseCopyWith<$Res> {
  _$GenericIdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericIdResponseImplCopyWith<$Res>
    implements $GenericIdResponseCopyWith<$Res> {
  factory _$$GenericIdResponseImplCopyWith(_$GenericIdResponseImpl value,
          $Res Function(_$GenericIdResponseImpl) then) =
      __$$GenericIdResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GenericIdResponseImplCopyWithImpl<$Res>
    extends _$GenericIdResponseCopyWithImpl<$Res, _$GenericIdResponseImpl>
    implements _$$GenericIdResponseImplCopyWith<$Res> {
  __$$GenericIdResponseImplCopyWithImpl(_$GenericIdResponseImpl _value,
      $Res Function(_$GenericIdResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GenericIdResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericIdResponseImpl implements _GenericIdResponse {
  _$GenericIdResponseImpl({required this.id});

  factory _$GenericIdResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericIdResponseImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'GenericIdResponse(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericIdResponseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericIdResponseImplCopyWith<_$GenericIdResponseImpl> get copyWith =>
      __$$GenericIdResponseImplCopyWithImpl<_$GenericIdResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericIdResponseImplToJson(
      this,
    );
  }
}

abstract class _GenericIdResponse implements GenericIdResponse {
  factory _GenericIdResponse({required final int id}) = _$GenericIdResponseImpl;

  factory _GenericIdResponse.fromJson(Map<String, dynamic> json) =
      _$GenericIdResponseImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$GenericIdResponseImplCopyWith<_$GenericIdResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
