// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleTypeModel _$VehicleTypeModelFromJson(Map<String, dynamic> json) {
  return _VehicleTypeModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleTypeModel {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  VehicleManufacture get manufacture => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleTypeModelCopyWith<VehicleTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTypeModelCopyWith<$Res> {
  factory $VehicleTypeModelCopyWith(
          VehicleTypeModel value, $Res Function(VehicleTypeModel) then) =
      _$VehicleTypeModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      VehicleManufacture manufacture,
      String model,
      int year,
      String color,
      String description,
      int accountId});

  $VehicleManufactureCopyWith<$Res> get manufacture;
}

/// @nodoc
class _$VehicleTypeModelCopyWithImpl<$Res>
    implements $VehicleTypeModelCopyWith<$Res> {
  _$VehicleTypeModelCopyWithImpl(this._value, this._then);

  final VehicleTypeModel _value;
  // ignore: unused_field
  final $Res Function(VehicleTypeModel) _then;

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
              as VehicleManufacture,
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

  @override
  $VehicleManufactureCopyWith<$Res> get manufacture {
    return $VehicleManufactureCopyWith<$Res>(_value.manufacture, (value) {
      return _then(_value.copyWith(manufacture: value));
    });
  }
}

/// @nodoc
abstract class _$$_VehicleTypeModelCopyWith<$Res>
    implements $VehicleTypeModelCopyWith<$Res> {
  factory _$$_VehicleTypeModelCopyWith(
          _$_VehicleTypeModel value, $Res Function(_$_VehicleTypeModel) then) =
      __$$_VehicleTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      VehicleManufacture manufacture,
      String model,
      int year,
      String color,
      String description,
      int accountId});

  @override
  $VehicleManufactureCopyWith<$Res> get manufacture;
}

/// @nodoc
class __$$_VehicleTypeModelCopyWithImpl<$Res>
    extends _$VehicleTypeModelCopyWithImpl<$Res>
    implements _$$_VehicleTypeModelCopyWith<$Res> {
  __$$_VehicleTypeModelCopyWithImpl(
      _$_VehicleTypeModel _value, $Res Function(_$_VehicleTypeModel) _then)
      : super(_value, (v) => _then(v as _$_VehicleTypeModel));

  @override
  _$_VehicleTypeModel get _value => super._value as _$_VehicleTypeModel;

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
    return _then(_$_VehicleTypeModel(
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
              as VehicleManufacture,
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
class _$_VehicleTypeModel extends _VehicleTypeModel {
  const _$_VehicleTypeModel(
      {required this.id,
      required this.uuid,
      required this.manufacture,
      required this.model,
      required this.year,
      required this.color,
      required this.description,
      required this.accountId})
      : super._();

  factory _$_VehicleTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleTypeModelFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final VehicleManufacture manufacture;
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
    return 'VehicleTypeModel(id: $id, uuid: $uuid, manufacture: $manufacture, model: $model, year: $year, color: $color, description: $description, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleTypeModel &&
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
  _$$_VehicleTypeModelCopyWith<_$_VehicleTypeModel> get copyWith =>
      __$$_VehicleTypeModelCopyWithImpl<_$_VehicleTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleTypeModelToJson(this);
  }
}

abstract class _VehicleTypeModel extends VehicleTypeModel {
  const factory _VehicleTypeModel(
      {required final int id,
      required final String uuid,
      required final VehicleManufacture manufacture,
      required final String model,
      required final int year,
      required final String color,
      required final String description,
      required final int accountId}) = _$_VehicleTypeModel;
  const _VehicleTypeModel._() : super._();

  factory _VehicleTypeModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleTypeModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  VehicleManufacture get manufacture => throw _privateConstructorUsedError;
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
  _$$_VehicleTypeModelCopyWith<_$_VehicleTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
