// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navigation_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationBarState {
  int? get currentTabItem => throw _privateConstructorUsedError;
  bool get every => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationBarStateCopyWith<BottomNavigationBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationBarStateCopyWith<$Res> {
  factory $BottomNavigationBarStateCopyWith(BottomNavigationBarState value,
          $Res Function(BottomNavigationBarState) then) =
      _$BottomNavigationBarStateCopyWithImpl<$Res>;
  $Res call({int? currentTabItem, bool every, String? data});
}

/// @nodoc
class _$BottomNavigationBarStateCopyWithImpl<$Res>
    implements $BottomNavigationBarStateCopyWith<$Res> {
  _$BottomNavigationBarStateCopyWithImpl(this._value, this._then);

  final BottomNavigationBarState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationBarState) _then;

  @override
  $Res call({
    Object? currentTabItem = freezed,
    Object? every = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      currentTabItem: currentTabItem == freezed
          ? _value.currentTabItem
          : currentTabItem // ignore: cast_nullable_to_non_nullable
              as int?,
      every: every == freezed
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BottomNavigationBarStateCopyWith<$Res>
    implements $BottomNavigationBarStateCopyWith<$Res> {
  factory _$$_BottomNavigationBarStateCopyWith(
          _$_BottomNavigationBarState value,
          $Res Function(_$_BottomNavigationBarState) then) =
      __$$_BottomNavigationBarStateCopyWithImpl<$Res>;
  @override
  $Res call({int? currentTabItem, bool every, String? data});
}

/// @nodoc
class __$$_BottomNavigationBarStateCopyWithImpl<$Res>
    extends _$BottomNavigationBarStateCopyWithImpl<$Res>
    implements _$$_BottomNavigationBarStateCopyWith<$Res> {
  __$$_BottomNavigationBarStateCopyWithImpl(_$_BottomNavigationBarState _value,
      $Res Function(_$_BottomNavigationBarState) _then)
      : super(_value, (v) => _then(v as _$_BottomNavigationBarState));

  @override
  _$_BottomNavigationBarState get _value =>
      super._value as _$_BottomNavigationBarState;

  @override
  $Res call({
    Object? currentTabItem = freezed,
    Object? every = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BottomNavigationBarState(
      currentTabItem: currentTabItem == freezed
          ? _value.currentTabItem
          : currentTabItem // ignore: cast_nullable_to_non_nullable
              as int?,
      every: every == freezed
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationBarState
    with DiagnosticableTreeMixin
    implements _BottomNavigationBarState {
  const _$_BottomNavigationBarState(
      {required this.currentTabItem, required this.every, required this.data});

  @override
  final int? currentTabItem;
  @override
  final bool every;
  @override
  final String? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BottomNavigationBarState(currentTabItem: $currentTabItem, every: $every, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BottomNavigationBarState'))
      ..add(DiagnosticsProperty('currentTabItem', currentTabItem))
      ..add(DiagnosticsProperty('every', every))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavigationBarState &&
            const DeepCollectionEquality()
                .equals(other.currentTabItem, currentTabItem) &&
            const DeepCollectionEquality().equals(other.every, every) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTabItem),
      const DeepCollectionEquality().hash(every),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_BottomNavigationBarStateCopyWith<_$_BottomNavigationBarState>
      get copyWith => __$$_BottomNavigationBarStateCopyWithImpl<
          _$_BottomNavigationBarState>(this, _$identity);
}

abstract class _BottomNavigationBarState implements BottomNavigationBarState {
  const factory _BottomNavigationBarState(
      {required final int? currentTabItem,
      required final bool every,
      required final String? data}) = _$_BottomNavigationBarState;

  @override
  int? get currentTabItem => throw _privateConstructorUsedError;
  @override
  bool get every => throw _privateConstructorUsedError;
  @override
  String? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavigationBarStateCopyWith<_$_BottomNavigationBarState>
      get copyWith => throw _privateConstructorUsedError;
}
