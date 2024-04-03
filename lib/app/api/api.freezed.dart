// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateAppDTO _$CreateAppDTOFromJson(Map<String, dynamic> json) {
  return _CreateAppDto.fromJson(json);
}

/// @nodoc
mixin _$CreateAppDTO {
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAppDTOCopyWith<CreateAppDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAppDTOCopyWith<$Res> {
  factory $CreateAppDTOCopyWith(
          CreateAppDTO value, $Res Function(CreateAppDTO) then) =
      _$CreateAppDTOCopyWithImpl<$Res, CreateAppDTO>;
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class _$CreateAppDTOCopyWithImpl<$Res, $Val extends CreateAppDTO>
    implements $CreateAppDTOCopyWith<$Res> {
  _$CreateAppDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAppDtoImplCopyWith<$Res>
    implements $CreateAppDTOCopyWith<$Res> {
  factory _$$CreateAppDtoImplCopyWith(
          _$CreateAppDtoImpl value, $Res Function(_$CreateAppDtoImpl) then) =
      __$$CreateAppDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class __$$CreateAppDtoImplCopyWithImpl<$Res>
    extends _$CreateAppDTOCopyWithImpl<$Res, _$CreateAppDtoImpl>
    implements _$$CreateAppDtoImplCopyWith<$Res> {
  __$$CreateAppDtoImplCopyWithImpl(
      _$CreateAppDtoImpl _value, $Res Function(_$CreateAppDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$CreateAppDtoImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAppDtoImpl implements _CreateAppDto {
  const _$CreateAppDtoImpl({required this.displayName});

  factory _$CreateAppDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAppDtoImplFromJson(json);

  @override
  final String displayName;

  @override
  String toString() {
    return 'CreateAppDTO(displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAppDtoImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAppDtoImplCopyWith<_$CreateAppDtoImpl> get copyWith =>
      __$$CreateAppDtoImplCopyWithImpl<_$CreateAppDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAppDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateAppDto implements CreateAppDTO {
  const factory _CreateAppDto({required final String displayName}) =
      _$CreateAppDtoImpl;

  factory _CreateAppDto.fromJson(Map<String, dynamic> json) =
      _$CreateAppDtoImpl.fromJson;

  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$CreateAppDtoImplCopyWith<_$CreateAppDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditAppDTO _$EditAppDTOFromJson(Map<String, dynamic> json) {
  return _EditAppDto.fromJson(json);
}

/// @nodoc
mixin _$EditAppDTO {
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditAppDTOCopyWith<EditAppDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAppDTOCopyWith<$Res> {
  factory $EditAppDTOCopyWith(
          EditAppDTO value, $Res Function(EditAppDTO) then) =
      _$EditAppDTOCopyWithImpl<$Res, EditAppDTO>;
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class _$EditAppDTOCopyWithImpl<$Res, $Val extends EditAppDTO>
    implements $EditAppDTOCopyWith<$Res> {
  _$EditAppDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditAppDtoImplCopyWith<$Res>
    implements $EditAppDTOCopyWith<$Res> {
  factory _$$EditAppDtoImplCopyWith(
          _$EditAppDtoImpl value, $Res Function(_$EditAppDtoImpl) then) =
      __$$EditAppDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class __$$EditAppDtoImplCopyWithImpl<$Res>
    extends _$EditAppDTOCopyWithImpl<$Res, _$EditAppDtoImpl>
    implements _$$EditAppDtoImplCopyWith<$Res> {
  __$$EditAppDtoImplCopyWithImpl(
      _$EditAppDtoImpl _value, $Res Function(_$EditAppDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$EditAppDtoImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditAppDtoImpl implements _EditAppDto {
  const _$EditAppDtoImpl({required this.displayName});

  factory _$EditAppDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditAppDtoImplFromJson(json);

  @override
  final String displayName;

  @override
  String toString() {
    return 'EditAppDTO(displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAppDtoImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAppDtoImplCopyWith<_$EditAppDtoImpl> get copyWith =>
      __$$EditAppDtoImplCopyWithImpl<_$EditAppDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditAppDtoImplToJson(
      this,
    );
  }
}

abstract class _EditAppDto implements EditAppDTO {
  const factory _EditAppDto({required final String displayName}) =
      _$EditAppDtoImpl;

  factory _EditAppDto.fromJson(Map<String, dynamic> json) =
      _$EditAppDtoImpl.fromJson;

  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$EditAppDtoImplCopyWith<_$EditAppDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
