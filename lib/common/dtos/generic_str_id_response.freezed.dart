// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_str_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenericStrIdResponse _$GenericStrIdResponseFromJson(Map<String, dynamic> json) {
  return _GenericStrIdResponse.fromJson(json);
}

/// @nodoc
mixin _$GenericStrIdResponse {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericStrIdResponseCopyWith<GenericStrIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericStrIdResponseCopyWith<$Res> {
  factory $GenericStrIdResponseCopyWith(GenericStrIdResponse value,
          $Res Function(GenericStrIdResponse) then) =
      _$GenericStrIdResponseCopyWithImpl<$Res, GenericStrIdResponse>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$GenericStrIdResponseCopyWithImpl<$Res,
        $Val extends GenericStrIdResponse>
    implements $GenericStrIdResponseCopyWith<$Res> {
  _$GenericStrIdResponseCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericStrIdResponseImplCopyWith<$Res>
    implements $GenericStrIdResponseCopyWith<$Res> {
  factory _$$GenericStrIdResponseImplCopyWith(_$GenericStrIdResponseImpl value,
          $Res Function(_$GenericStrIdResponseImpl) then) =
      __$$GenericStrIdResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GenericStrIdResponseImplCopyWithImpl<$Res>
    extends _$GenericStrIdResponseCopyWithImpl<$Res, _$GenericStrIdResponseImpl>
    implements _$$GenericStrIdResponseImplCopyWith<$Res> {
  __$$GenericStrIdResponseImplCopyWithImpl(_$GenericStrIdResponseImpl _value,
      $Res Function(_$GenericStrIdResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GenericStrIdResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericStrIdResponseImpl implements _GenericStrIdResponse {
  _$GenericStrIdResponseImpl({required this.id});

  factory _$GenericStrIdResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericStrIdResponseImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'GenericStrIdResponse(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericStrIdResponseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericStrIdResponseImplCopyWith<_$GenericStrIdResponseImpl>
      get copyWith =>
          __$$GenericStrIdResponseImplCopyWithImpl<_$GenericStrIdResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericStrIdResponseImplToJson(
      this,
    );
  }
}

abstract class _GenericStrIdResponse implements GenericStrIdResponse {
  factory _GenericStrIdResponse({required final String id}) =
      _$GenericStrIdResponseImpl;

  factory _GenericStrIdResponse.fromJson(Map<String, dynamic> json) =
      _$GenericStrIdResponseImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GenericStrIdResponseImplCopyWith<_$GenericStrIdResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
