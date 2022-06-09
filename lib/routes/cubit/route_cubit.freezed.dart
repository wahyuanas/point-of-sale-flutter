// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouteState {
  OnRouteState? get onRoute => throw _privateConstructorUsedError;
  Object? get args => throw _privateConstructorUsedError;
  bool? get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouteStateCopyWith<RouteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteStateCopyWith<$Res> {
  factory $RouteStateCopyWith(
          RouteState value, $Res Function(RouteState) then) =
      _$RouteStateCopyWithImpl<$Res>;
  $Res call({OnRouteState? onRoute, Object? args, bool? route});

  $OnRouteStateCopyWith<$Res>? get onRoute;
}

/// @nodoc
class _$RouteStateCopyWithImpl<$Res> implements $RouteStateCopyWith<$Res> {
  _$RouteStateCopyWithImpl(this._value, this._then);

  final RouteState _value;
  // ignore: unused_field
  final $Res Function(RouteState) _then;

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
              as OnRouteState?,
      args: args == freezed ? _value.args : args,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $OnRouteStateCopyWith<$Res>? get onRoute {
    if (_value.onRoute == null) {
      return null;
    }

    return $OnRouteStateCopyWith<$Res>(_value.onRoute!, (value) {
      return _then(_value.copyWith(onRoute: value));
    });
  }
}

/// @nodoc
abstract class _$$_RouteStateCopyWith<$Res>
    implements $RouteStateCopyWith<$Res> {
  factory _$$_RouteStateCopyWith(
          _$_RouteState value, $Res Function(_$_RouteState) then) =
      __$$_RouteStateCopyWithImpl<$Res>;
  @override
  $Res call({OnRouteState? onRoute, Object? args, bool? route});

  @override
  $OnRouteStateCopyWith<$Res>? get onRoute;
}

/// @nodoc
class __$$_RouteStateCopyWithImpl<$Res> extends _$RouteStateCopyWithImpl<$Res>
    implements _$$_RouteStateCopyWith<$Res> {
  __$$_RouteStateCopyWithImpl(
      _$_RouteState _value, $Res Function(_$_RouteState) _then)
      : super(_value, (v) => _then(v as _$_RouteState));

  @override
  _$_RouteState get _value => super._value as _$_RouteState;

  @override
  $Res call({
    Object? onRoute = freezed,
    Object? args = freezed,
    Object? route = freezed,
  }) {
    return _then(_$_RouteState(
      onRoute: onRoute == freezed
          ? _value.onRoute
          : onRoute // ignore: cast_nullable_to_non_nullable
              as OnRouteState?,
      args: args == freezed ? _value.args : args,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_RouteState with DiagnosticableTreeMixin implements _RouteState {
  const _$_RouteState(
      {required this.onRoute, required this.args, required this.route});

  @override
  final OnRouteState? onRoute;
  @override
  final Object? args;
  @override
  final bool? route;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteState(onRoute: $onRoute, args: $args, route: $route)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteState'))
      ..add(DiagnosticsProperty('onRoute', onRoute))
      ..add(DiagnosticsProperty('args', args))
      ..add(DiagnosticsProperty('route', route));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteState &&
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
  _$$_RouteStateCopyWith<_$_RouteState> get copyWith =>
      __$$_RouteStateCopyWithImpl<_$_RouteState>(this, _$identity);
}

abstract class _RouteState implements RouteState {
  const factory _RouteState(
      {required final OnRouteState? onRoute,
      required final Object? args,
      required final bool? route}) = _$_RouteState;

  @override
  OnRouteState? get onRoute => throw _privateConstructorUsedError;
  @override
  Object? get args => throw _privateConstructorUsedError;
  @override
  bool? get route => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RouteStateCopyWith<_$_RouteState> get copyWith =>
      throw _privateConstructorUsedError;
}
