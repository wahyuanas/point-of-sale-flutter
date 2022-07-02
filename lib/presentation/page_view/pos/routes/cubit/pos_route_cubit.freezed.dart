// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_route_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosRouteState {
  PosOnRouteState<String>? get onRoute => throw _privateConstructorUsedError;
  Object? get args => throw _privateConstructorUsedError;
  bool? get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosRouteStateCopyWith<PosRouteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosRouteStateCopyWith<$Res> {
  factory $PosRouteStateCopyWith(
          PosRouteState value, $Res Function(PosRouteState) then) =
      _$PosRouteStateCopyWithImpl<$Res>;
  $Res call({PosOnRouteState<String>? onRoute, Object? args, bool? route});

  $PosOnRouteStateCopyWith<String, $Res>? get onRoute;
}

/// @nodoc
class _$PosRouteStateCopyWithImpl<$Res>
    implements $PosRouteStateCopyWith<$Res> {
  _$PosRouteStateCopyWithImpl(this._value, this._then);

  final PosRouteState _value;
  // ignore: unused_field
  final $Res Function(PosRouteState) _then;

  @override
  $Res call({
    Object? onRoute = freezed,
    Object? args = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      onRoute: onRoute == freezed
          ? _value.onRoute
          : onRoute // ignore: cast_nullable_to_non_nullable
              as PosOnRouteState<String>?,
      args: args == freezed ? _value.args : args,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $PosOnRouteStateCopyWith<String, $Res>? get onRoute {
    if (_value.onRoute == null) {
      return null;
    }

    return $PosOnRouteStateCopyWith<String, $Res>(_value.onRoute!, (value) {
      return _then(_value.copyWith(onRoute: value));
    });
  }
}

/// @nodoc
abstract class _$$_PosRouteStateCopyWith<$Res>
    implements $PosRouteStateCopyWith<$Res> {
  factory _$$_PosRouteStateCopyWith(
          _$_PosRouteState value, $Res Function(_$_PosRouteState) then) =
      __$$_PosRouteStateCopyWithImpl<$Res>;
  @override
  $Res call({PosOnRouteState<String>? onRoute, Object? args, bool? route});

  @override
  $PosOnRouteStateCopyWith<String, $Res>? get onRoute;
}

/// @nodoc
class __$$_PosRouteStateCopyWithImpl<$Res>
    extends _$PosRouteStateCopyWithImpl<$Res>
    implements _$$_PosRouteStateCopyWith<$Res> {
  __$$_PosRouteStateCopyWithImpl(
      _$_PosRouteState _value, $Res Function(_$_PosRouteState) _then)
      : super(_value, (v) => _then(v as _$_PosRouteState));

  @override
  _$_PosRouteState get _value => super._value as _$_PosRouteState;

  @override
  $Res call({
    Object? onRoute = freezed,
    Object? args = freezed,
    Object? route = freezed,
  }) {
    return _then(_$_PosRouteState(
      onRoute: onRoute == freezed
          ? _value.onRoute
          : onRoute // ignore: cast_nullable_to_non_nullable
              as PosOnRouteState<String>?,
      args: args == freezed ? _value.args : args,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_PosRouteState with DiagnosticableTreeMixin implements _PosRouteState {
  const _$_PosRouteState(
      {required this.onRoute, required this.args, required this.route});

  @override
  final PosOnRouteState<String>? onRoute;
  @override
  final Object? args;
  @override
  final bool? route;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosRouteState(onRoute: $onRoute, args: $args, route: $route)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosRouteState'))
      ..add(DiagnosticsProperty('onRoute', onRoute))
      ..add(DiagnosticsProperty('args', args))
      ..add(DiagnosticsProperty('route', route));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosRouteState &&
            const DeepCollectionEquality().equals(other.onRoute, onRoute) &&
            const DeepCollectionEquality().equals(other.args, args) &&
            const DeepCollectionEquality().equals(other.route, route));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(onRoute),
      const DeepCollectionEquality().hash(args),
      const DeepCollectionEquality().hash(route));

  @JsonKey(ignore: true)
  @override
  _$$_PosRouteStateCopyWith<_$_PosRouteState> get copyWith =>
      __$$_PosRouteStateCopyWithImpl<_$_PosRouteState>(this, _$identity);
}

abstract class _PosRouteState implements PosRouteState {
  const factory _PosRouteState(
      {required final PosOnRouteState<String>? onRoute,
      required final Object? args,
      required final bool? route}) = _$_PosRouteState;

  @override
  PosOnRouteState<String>? get onRoute => throw _privateConstructorUsedError;
  @override
  Object? get args => throw _privateConstructorUsedError;
  @override
  bool? get route => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosRouteStateCopyWith<_$_PosRouteState> get copyWith =>
      throw _privateConstructorUsedError;
}
