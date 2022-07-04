// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleType _$VehicleTypeFromJson(Map<String, dynamic> json) {
  return _VehicleType.fromJson(json);
}

/// @nodoc
mixin _$VehicleType {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  int get manufacture => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleTypeCopyWith<VehicleType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTypeCopyWith<$Res> {
  factory $VehicleTypeCopyWith(
          VehicleType value, $Res Function(VehicleType) then) =
      _$VehicleTypeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      int manufacture,
      String model,
      int year,
      String color,
      String description,
      int accountId});
}

/// @nodoc
class _$VehicleTypeCopyWithImpl<$Res> implements $VehicleTypeCopyWith<$Res> {
  _$VehicleTypeCopyWithImpl(this._value, this._then);

  final VehicleType _value;
  // ignore: unused_field
  final $Res Function(VehicleType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? manufacture = freezed,
    Object? model = freezed,
    Object? year = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      manufacture: manufacture == freezed
          ? _value.manufacture
          : manufacture // ignore: cast_nullable_to_non_nullable
              as int,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_VehicleTypeCopyWith<$Res>
    implements $VehicleTypeCopyWith<$Res> {
  factory _$$_VehicleTypeCopyWith(
          _$_VehicleType value, $Res Function(_$_VehicleType) then) =
      __$$_VehicleTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      int manufacture,
      String model,
      int year,
      String color,
      String description,
      int accountId});
}

/// @nodoc
class __$$_VehicleTypeCopyWithImpl<$Res> extends _$VehicleTypeCopyWithImpl<$Res>
    implements _$$_VehicleTypeCopyWith<$Res> {
  __$$_VehicleTypeCopyWithImpl(
      _$_VehicleType _value, $Res Function(_$_VehicleType) _then)
      : super(_value, (v) => _then(v as _$_VehicleType));

  @override
  _$_VehicleType get _value => super._value as _$_VehicleType;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? manufacture = freezed,
    Object? model = freezed,
    Object? year = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$_VehicleType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      manufacture: manufacture == freezed
          ? _value.manufacture
          : manufacture // ignore: cast_nullable_to_non_nullable
              as int,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleType extends _VehicleType {
  const _$_VehicleType(
      {required this.id,
      required this.uuid,
      required this.manufacture,
      required this.model,
      required this.year,
      required this.color,
      required this.description,
      required this.accountId})
      : super._();

  factory _$_VehicleType.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleTypeFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final int manufacture;
  @override
  final String model;
  @override
  final int year;
  @override
  final String color;
  @override
  final String description;
  @override
  final int accountId;

  @override
  String toString() {
    return 'VehicleType(id: $id, uuid: $uuid, manufacture: $manufacture, model: $model, year: $year, color: $color, description: $description, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleType &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality()
                .equals(other.manufacture, manufacture) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(manufacture),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleTypeCopyWith<_$_VehicleType> get copyWith =>
      __$$_VehicleTypeCopyWithImpl<_$_VehicleType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleTypeToJson(this);
  }
}

abstract class _VehicleType extends VehicleType {
  const factory _VehicleType(
      {required final int id,
      required final String uuid,
      required final int manufacture,
      required final String model,
      required final int year,
      required final String color,
      required final String description,
      required final int accountId}) = _$_VehicleType;
  const _VehicleType._() : super._();

  factory _VehicleType.fromJson(Map<String, dynamic> json) =
      _$_VehicleType.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  int get manufacture => throw _privateConstructorUsedError;
  @override
  String get model => throw _privateConstructorUsedError;
  @override
  int get year => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleTypeCopyWith<_$_VehicleType> get copyWith =>
      throw _privateConstructorUsedError;
}
