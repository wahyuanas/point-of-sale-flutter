// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'on_introduction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnIntroductionState _$OnIntroductionStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unDone':
      return UnDone.fromJson(json);
    case 'done':
      return Done.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OnIntroductionState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$OnIntroductionStateTearOff {
  const _$OnIntroductionStateTearOff();

  UnDone unDone() {
    return const UnDone();
  }

  Done done() {
    return const Done();
  }

  OnIntroductionState fromJson(Map<String, Object?> json) {
    return OnIntroductionState.fromJson(json);
  }
}

/// @nodoc
const $OnIntroductionState = _$OnIntroductionStateTearOff();

/// @nodoc
mixin _$OnIntroductionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unDone,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unDone,
    TResult Function()? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unDone,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnDone value) unDone,
    required TResult Function(Done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnDone value)? unDone,
    TResult Function(Done value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnDone value)? unDone,
    TResult Function(Done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnIntroductionStateCopyWith<$Res> {
  factory $OnIntroductionStateCopyWith(
          OnIntroductionState value, $Res Function(OnIntroductionState) then) =
      _$OnIntroductionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnIntroductionStateCopyWithImpl<$Res>
    implements $OnIntroductionStateCopyWith<$Res> {
  _$OnIntroductionStateCopyWithImpl(this._value, this._then);

  final OnIntroductionState _value;
  // ignore: unused_field
  final $Res Function(OnIntroductionState) _then;
}

/// @nodoc
abstract class $UnDoneCopyWith<$Res> {
  factory $UnDoneCopyWith(UnDone value, $Res Function(UnDone) then) =
      _$UnDoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnDoneCopyWithImpl<$Res> extends _$OnIntroductionStateCopyWithImpl<$Res>
    implements $UnDoneCopyWith<$Res> {
  _$UnDoneCopyWithImpl(UnDone _value, $Res Function(UnDone) _then)
      : super(_value, (v) => _then(v as UnDone));

  @override
  UnDone get _value => super._value as UnDone;
}

/// @nodoc
@JsonSerializable()
class _$UnDone with DiagnosticableTreeMixin implements UnDone {
  const _$UnDone({String? $type}) : $type = $type ?? 'unDone';

  factory _$UnDone.fromJson(Map<String, dynamic> json) =>
      _$$UnDoneFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnIntroductionState.unDone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnIntroductionState.unDone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unDone,
    required TResult Function() done,
  }) {
    return unDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unDone,
    TResult Function()? done,
  }) {
    return unDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unDone,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (unDone != null) {
      return unDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnDone value) unDone,
    required TResult Function(Done value) done,
  }) {
    return unDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnDone value)? unDone,
    TResult Function(Done value)? done,
  }) {
    return unDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnDone value)? unDone,
    TResult Function(Done value)? done,
    required TResult orElse(),
  }) {
    if (unDone != null) {
      return unDone(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnDoneToJson(this);
  }
}

abstract class UnDone implements OnIntroductionState {
  const factory UnDone() = _$UnDone;

  factory UnDone.fromJson(Map<String, dynamic> json) = _$UnDone.fromJson;
}

/// @nodoc
abstract class $DoneCopyWith<$Res> {
  factory $DoneCopyWith(Done value, $Res Function(Done) then) =
      _$DoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoneCopyWithImpl<$Res> extends _$OnIntroductionStateCopyWithImpl<$Res>
    implements $DoneCopyWith<$Res> {
  _$DoneCopyWithImpl(Done _value, $Res Function(Done) _then)
      : super(_value, (v) => _then(v as Done));

  @override
  Done get _value => super._value as Done;
}

/// @nodoc
@JsonSerializable()
class _$Done with DiagnosticableTreeMixin implements Done {
  const _$Done({String? $type}) : $type = $type ?? 'done';

  factory _$Done.fromJson(Map<String, dynamic> json) => _$$DoneFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnIntroductionState.done()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnIntroductionState.done'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Done);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unDone,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unDone,
    TResult Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unDone,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnDone value) unDone,
    required TResult Function(Done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnDone value)? unDone,
    TResult Function(Done value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnDone value)? unDone,
    TResult Function(Done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DoneToJson(this);
  }
}

abstract class Done implements OnIntroductionState {
  const factory Done() = _$Done;

  factory Done.fromJson(Map<String, dynamic> json) = _$Done.fromJson;
}
