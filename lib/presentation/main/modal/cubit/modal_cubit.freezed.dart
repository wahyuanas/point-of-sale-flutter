// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'modal_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ModalState {
  String? get content => throw _privateConstructorUsedError;
  BuildContext? get modalContext => throw _privateConstructorUsedError;
  OnModalState? get onModalState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModalStateCopyWith<ModalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModalStateCopyWith<$Res> {
  factory $ModalStateCopyWith(
          ModalState value, $Res Function(ModalState) then) =
      _$ModalStateCopyWithImpl<$Res>;
  $Res call(
      {String? content,
      BuildContext? modalContext,
      OnModalState? onModalState});

  $OnModalStateCopyWith<$Res>? get onModalState;
}

/// @nodoc
class _$ModalStateCopyWithImpl<$Res> implements $ModalStateCopyWith<$Res> {
  _$ModalStateCopyWithImpl(this._value, this._then);

  final ModalState _value;
  // ignore: unused_field
  final $Res Function(ModalState) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? modalContext = freezed,
    Object? onModalState = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      modalContext: modalContext == freezed
          ? _value.modalContext
          : modalContext // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      onModalState: onModalState == freezed
          ? _value.onModalState
          : onModalState // ignore: cast_nullable_to_non_nullable
              as OnModalState?,
    ));
  }

  @override
  $OnModalStateCopyWith<$Res>? get onModalState {
    if (_value.onModalState == null) {
      return null;
    }

    return $OnModalStateCopyWith<$Res>(_value.onModalState!, (value) {
      return _then(_value.copyWith(onModalState: value));
    });
  }
}

/// @nodoc
abstract class _$$_ModalStateCopyWith<$Res>
    implements $ModalStateCopyWith<$Res> {
  factory _$$_ModalStateCopyWith(
          _$_ModalState value, $Res Function(_$_ModalState) then) =
      __$$_ModalStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? content,
      BuildContext? modalContext,
      OnModalState? onModalState});

  @override
  $OnModalStateCopyWith<$Res>? get onModalState;
}

/// @nodoc
class __$$_ModalStateCopyWithImpl<$Res> extends _$ModalStateCopyWithImpl<$Res>
    implements _$$_ModalStateCopyWith<$Res> {
  __$$_ModalStateCopyWithImpl(
      _$_ModalState _value, $Res Function(_$_ModalState) _then)
      : super(_value, (v) => _then(v as _$_ModalState));

  @override
  _$_ModalState get _value => super._value as _$_ModalState;

  @override
  $Res call({
    Object? content = freezed,
    Object? modalContext = freezed,
    Object? onModalState = freezed,
  }) {
    return _then(_$_ModalState(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      modalContext: modalContext == freezed
          ? _value.modalContext
          : modalContext // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      onModalState: onModalState == freezed
          ? _value.onModalState
          : onModalState // ignore: cast_nullable_to_non_nullable
              as OnModalState?,
    ));
  }
}

/// @nodoc

class _$_ModalState with DiagnosticableTreeMixin implements _ModalState {
  const _$_ModalState(
      {required this.content,
      required this.modalContext,
      required this.onModalState});

  @override
  final String? content;
  @override
  final BuildContext? modalContext;
  @override
  final OnModalState? onModalState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModalState(content: $content, modalContext: $modalContext, onModalState: $onModalState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ModalState'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('modalContext', modalContext))
      ..add(DiagnosticsProperty('onModalState', onModalState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModalState &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.modalContext, modalContext) &&
            const DeepCollectionEquality()
                .equals(other.onModalState, onModalState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(modalContext),
      const DeepCollectionEquality().hash(onModalState));

  @JsonKey(ignore: true)
  @override
  _$$_ModalStateCopyWith<_$_ModalState> get copyWith =>
      __$$_ModalStateCopyWithImpl<_$_ModalState>(this, _$identity);
}

abstract class _ModalState implements ModalState {
  const factory _ModalState(
      {required final String? content,
      required final BuildContext? modalContext,
      required final OnModalState? onModalState}) = _$_ModalState;

  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  BuildContext? get modalContext => throw _privateConstructorUsedError;
  @override
  OnModalState? get onModalState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ModalStateCopyWith<_$_ModalState> get copyWith =>
      throw _privateConstructorUsedError;
}
