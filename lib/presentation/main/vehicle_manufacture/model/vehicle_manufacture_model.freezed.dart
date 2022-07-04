// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_manufacture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleManufactureModel _$VehicleManufactureModelFromJson(
    Map<String, dynamic> json) {
  return _VehicleManufactureModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleManufactureModel {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleManufactureModelCopyWith<VehicleManufactureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleManufactureModelCopyWith<$Res> {
  factory $VehicleManufactureModelCopyWith(VehicleManufactureModel value,
          $Res Function(VehicleManufactureModel) then) =
      _$VehicleManufactureModelCopyWithImpl<$Res>;
  $Res call({int id, String uuid, String name});
}

/// @nodoc
class _$VehicleManufactureModelCopyWithImpl<$Res>
    implements $VehicleManufactureModelCopyWith<$Res> {
  _$VehicleManufactureModelCopyWithImpl(this._value, this._then);

  final VehicleManufactureModel _value;
  // ignore: unused_field
  final $Res Function(VehicleManufactureModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VehicleManufactureModelCopyWith<$Res>
    implements $VehicleManufactureModelCopyWith<$Res> {
  factory _$$_VehicleManufactureModelCopyWith(_$_VehicleManufactureModel value,
          $Res Function(_$_VehicleManufactureModel) then) =
      __$$_VehicleManufactureModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String uuid, String name});
}

/// @nodoc
class __$$_VehicleManufactureModelCopyWithImpl<$Res>
    extends _$VehicleManufactureModelCopyWithImpl<$Res>
    implements _$$_VehicleManufactureModelCopyWith<$Res> {
  __$$_VehicleManufactureModelCopyWithImpl(_$_VehicleManufactureModel _value,
      $Res Function(_$_VehicleManufactureModel) _then)
      : super(_value, (v) => _then(v as _$_VehicleManufactureModel));

  @override
  _$_VehicleManufactureModel get _value =>
      super._value as _$_VehicleManufactureModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_VehicleManufactureModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleManufactureModel extends _VehicleManufactureModel {
  const _$_VehicleManufactureModel(
      {required this.id, required this.uuid, required this.name})
      : super._();

  factory _$_VehicleManufactureModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleManufactureModelFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String name;

  @override
  String toString() {
    return 'VehicleManufactureModel(id: $id, uuid: $uuid, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleManufactureModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleManufactureModelCopyWith<_$_VehicleManufactureModel>
      get copyWith =>
          __$$_VehicleManufactureModelCopyWithImpl<_$_VehicleManufactureModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleManufactureModelToJson(this);
  }
}

abstract class _VehicleManufactureModel extends VehicleManufactureModel {
  const factory _VehicleManufactureModel(
      {required final int id,
      required final String uuid,
      required final String name}) = _$_VehicleManufactureModel;
  const _VehicleManufactureModel._() : super._();

  factory _VehicleManufactureModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleManufactureModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleManufactureModelCopyWith<_$_VehicleManufactureModel>
      get copyWith => throw _privateConstructorUsedError;
}
