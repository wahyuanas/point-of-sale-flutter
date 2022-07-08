import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:pos/domain/core/object_value/failures.dart';

import 'object_value.dart';

part "payment_card_info_object_value.freezed.dart";

@freezed
class CraetePaymentCardInfo with _$CraetePaymentCardInfo implements IEntity {
  const CraetePaymentCardInfo._();
  const factory CraetePaymentCardInfo({
    required CraetePaymentCardInfoId id,
    required CraetePaymentCardInfoName name,
    required CraetePaymentCardInfoNumber number,
    required CraetePaymentCardInfoNumberRef numberRef,
    required CraetePaymentCardInfoRemarks remarks,
  }) = _CraetePaymentCardInfo;

  factory CraetePaymentCardInfo.empty() => CraetePaymentCardInfo(
        id: CraetePaymentCardInfoId(null),
        name: CraetePaymentCardInfoName(''),
        number: CraetePaymentCardInfoNumber(''),
        numberRef: CraetePaymentCardInfoNumberRef(''),
        remarks: CraetePaymentCardInfoRemarks(''),
      );

  CraetePaymentCardInfo copyWithName(String? v) => CraetePaymentCardInfo(
      id: CraetePaymentCardInfoId(null),
      name: CraetePaymentCardInfoName(v ?? ''),
      number: number,
      numberRef: numberRef,
      remarks: remarks);

  CraetePaymentCardInfo copyWithNumber(String? v) => CraetePaymentCardInfo(
      id: CraetePaymentCardInfoId(null),
      name: name,
      number: CraetePaymentCardInfoNumber(v ?? ''),
      numberRef: numberRef,
      remarks: remarks);

  CraetePaymentCardInfo copyWithNumberRef(String? v) => CraetePaymentCardInfo(
      id: CraetePaymentCardInfoId(null),
      name: name,
      number: number,
      numberRef: CraetePaymentCardInfoNumberRef(v ?? ''),
      remarks: remarks);

  CraetePaymentCardInfo copyWithRemarks(String? v) => CraetePaymentCardInfo(
      id: CraetePaymentCardInfoId(null),
      name: name,
      number: number,
      numberRef: numberRef,
      remarks: CraetePaymentCardInfoRemarks(v ?? ''));
}

extension CraetePaymentCardInfoX on CraetePaymentCardInfo {
  Option<ObjectValueFailure> get failureOption {
    return name.failureOrUnit
        .andThen(number.failureOrUnit)
        .andThen(numberRef.failureOrUnit)
        .andThen(remarks.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
