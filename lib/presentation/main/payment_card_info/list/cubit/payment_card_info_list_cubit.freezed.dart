// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_card_info_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentCardInfoListState _$PaymentCardInfoListStateFromJson(
    Map<String, dynamic> json) {
  return _PaymentCardInfoListState.fromJson(json);
}

/// @nodoc
mixin _$PaymentCardInfoListState {
  List<PaymentCardInfo>? get paymentCardInfos =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCardInfoListStateCopyWith<PaymentCardInfoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardInfoListStateCopyWith<$Res> {
  factory $PaymentCardInfoListStateCopyWith(PaymentCardInfoListState value,
          $Res Function(PaymentCardInfoListState) then) =
      _$PaymentCardInfoListStateCopyWithImpl<$Res>;
  $Res call({List<PaymentCardInfo>? paymentCardInfos});
}

/// @nodoc
class _$PaymentCardInfoListStateCopyWithImpl<$Res>
    implements $PaymentCardInfoListStateCopyWith<$Res> {
  _$PaymentCardInfoListStateCopyWithImpl(this._value, this._then);

  final PaymentCardInfoListState _value;
  // ignore: unused_field
  final $Res Function(PaymentCardInfoListState) _then;

  @override
  $Res call({
    Object? paymentCardInfos = freezed,
  }) {
    return _then(_value.copyWith(
      paymentCardInfos: paymentCardInfos == freezed
          ? _value.paymentCardInfos
          : paymentCardInfos // ignore: cast_nullable_to_non_nullable
              as List<PaymentCardInfo>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaymentCardInfoListStateCopyWith<$Res>
    implements $PaymentCardInfoListStateCopyWith<$Res> {
  factory _$$_PaymentCardInfoListStateCopyWith(
          _$_PaymentCardInfoListState value,
          $Res Function(_$_PaymentCardInfoListState) then) =
      __$$_PaymentCardInfoListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<PaymentCardInfo>? paymentCardInfos});
}

/// @nodoc
class __$$_PaymentCardInfoListStateCopyWithImpl<$Res>
    extends _$PaymentCardInfoListStateCopyWithImpl<$Res>
    implements _$$_PaymentCardInfoListStateCopyWith<$Res> {
  __$$_PaymentCardInfoListStateCopyWithImpl(_$_PaymentCardInfoListState _value,
      $Res Function(_$_PaymentCardInfoListState) _then)
      : super(_value, (v) => _then(v as _$_PaymentCardInfoListState));

  @override
  _$_PaymentCardInfoListState get _value =>
      super._value as _$_PaymentCardInfoListState;

  @override
  $Res call({
    Object? paymentCardInfos = freezed,
  }) {
    return _then(_$_PaymentCardInfoListState(
      paymentCardInfos: paymentCardInfos == freezed
          ? _value._paymentCardInfos
          : paymentCardInfos // ignore: cast_nullable_to_non_nullable
              as List<PaymentCardInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentCardInfoListState
    with DiagnosticableTreeMixin
    implements _PaymentCardInfoListState {
  const _$_PaymentCardInfoListState(
      {required final List<PaymentCardInfo>? paymentCardInfos})
      : _paymentCardInfos = paymentCardInfos;

  factory _$_PaymentCardInfoListState.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentCardInfoListStateFromJson(json);

  final List<PaymentCardInfo>? _paymentCardInfos;
  @override
  List<PaymentCardInfo>? get paymentCardInfos {
    final value = _paymentCardInfos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentCardInfoListState(paymentCardInfos: $paymentCardInfos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentCardInfoListState'))
      ..add(DiagnosticsProperty('paymentCardInfos', paymentCardInfos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentCardInfoListState &&
            const DeepCollectionEquality()
                .equals(other._paymentCardInfos, _paymentCardInfos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentCardInfos));

  @JsonKey(ignore: true)
  @override
  _$$_PaymentCardInfoListStateCopyWith<_$_PaymentCardInfoListState>
      get copyWith => __$$_PaymentCardInfoListStateCopyWithImpl<
          _$_PaymentCardInfoListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentCardInfoListStateToJson(this);
  }
}

abstract class _PaymentCardInfoListState implements PaymentCardInfoListState {
  const factory _PaymentCardInfoListState(
          {required final List<PaymentCardInfo>? paymentCardInfos}) =
      _$_PaymentCardInfoListState;

  factory _PaymentCardInfoListState.fromJson(Map<String, dynamic> json) =
      _$_PaymentCardInfoListState.fromJson;

  @override
  List<PaymentCardInfo>? get paymentCardInfos =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCardInfoListStateCopyWith<_$_PaymentCardInfoListState>
      get copyWith => throw _privateConstructorUsedError;
}
