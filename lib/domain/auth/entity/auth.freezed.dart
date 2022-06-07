// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return _Auth.fromJson(json);
}

/// @nodoc
class _$AuthTearOff {
  const _$AuthTearOff();

  _Auth call(
      {required String? id,
      required String? name,
      required String? hpNumber,
      required String? email,
      required String? token,
      required String? photo,
      required int? isRegistered,
      required int? category,
      required int? password,
      required int? isMedSoc}) {
    return _Auth(
      id: id,
      name: name,
      hpNumber: hpNumber,
      email: email,
      token: token,
      photo: photo,
      isRegistered: isRegistered,
      category: category,
      password: password,
      isMedSoc: isMedSoc,
    );
  }

  Auth fromJson(Map<String, Object?> json) {
    return Auth.fromJson(json);
  }
}

/// @nodoc
const $Auth = _$AuthTearOff();

/// @nodoc
mixin _$Auth {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get hpNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  int? get isRegistered => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;
  int? get password => throw _privateConstructorUsedError;
  int? get isMedSoc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? hpNumber,
      String? email,
      String? token,
      String? photo,
      int? isRegistered,
      int? category,
      int? password,
      int? isMedSoc});
}

/// @nodoc
class _$AuthCopyWithImpl<$Res> implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  final Auth _value;
  // ignore: unused_field
  final $Res Function(Auth) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? hpNumber = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? photo = freezed,
    Object? isRegistered = freezed,
    Object? category = freezed,
    Object? password = freezed,
    Object? isMedSoc = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      hpNumber: hpNumber == freezed
          ? _value.hpNumber
          : hpNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegistered: isRegistered == freezed
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as int?,
      isMedSoc: isMedSoc == freezed
          ? _value.isMedSoc
          : isMedSoc // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AuthCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$AuthCopyWith(_Auth value, $Res Function(_Auth) then) =
      __$AuthCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? hpNumber,
      String? email,
      String? token,
      String? photo,
      int? isRegistered,
      int? category,
      int? password,
      int? isMedSoc});
}

/// @nodoc
class __$AuthCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements _$AuthCopyWith<$Res> {
  __$AuthCopyWithImpl(_Auth _value, $Res Function(_Auth) _then)
      : super(_value, (v) => _then(v as _Auth));

  @override
  _Auth get _value => super._value as _Auth;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? hpNumber = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? photo = freezed,
    Object? isRegistered = freezed,
    Object? category = freezed,
    Object? password = freezed,
    Object? isMedSoc = freezed,
  }) {
    return _then(_Auth(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      hpNumber: hpNumber == freezed
          ? _value.hpNumber
          : hpNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegistered: isRegistered == freezed
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as int?,
      isMedSoc: isMedSoc == freezed
          ? _value.isMedSoc
          : isMedSoc // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Auth implements _Auth {
  const _$_Auth(
      {required this.id,
      required this.name,
      required this.hpNumber,
      required this.email,
      required this.token,
      required this.photo,
      required this.isRegistered,
      required this.category,
      required this.password,
      required this.isMedSoc});

  factory _$_Auth.fromJson(Map<String, dynamic> json) => _$$_AuthFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? hpNumber;
  @override
  final String? email;
  @override
  final String? token;
  @override
  final String? photo;
  @override
  final int? isRegistered;
  @override
  final int? category;
  @override
  final int? password;
  @override
  final int? isMedSoc;

  @override
  String toString() {
    return 'Auth(id: $id, name: $name, hpNumber: $hpNumber, email: $email, token: $token, photo: $photo, isRegistered: $isRegistered, category: $category, password: $password, isMedSoc: $isMedSoc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Auth &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.hpNumber, hpNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality()
                .equals(other.isRegistered, isRegistered) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.isMedSoc, isMedSoc));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(hpNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(isRegistered),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isMedSoc));

  @JsonKey(ignore: true)
  @override
  _$AuthCopyWith<_Auth> get copyWith =>
      __$AuthCopyWithImpl<_Auth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthToJson(this);
  }
}

abstract class _Auth implements Auth {
  const factory _Auth(
      {required String? id,
      required String? name,
      required String? hpNumber,
      required String? email,
      required String? token,
      required String? photo,
      required int? isRegistered,
      required int? category,
      required int? password,
      required int? isMedSoc}) = _$_Auth;

  factory _Auth.fromJson(Map<String, dynamic> json) = _$_Auth.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get hpNumber;
  @override
  String? get email;
  @override
  String? get token;
  @override
  String? get photo;
  @override
  int? get isRegistered;
  @override
  int? get category;
  @override
  int? get password;
  @override
  int? get isMedSoc;
  @override
  @JsonKey(ignore: true)
  _$AuthCopyWith<_Auth> get copyWith => throw _privateConstructorUsedError;
}
