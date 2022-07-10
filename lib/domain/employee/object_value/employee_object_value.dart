import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

import 'object_value.dart';

part "employee_object_value.freezed.dart";

@freezed
class CreateEmployee with _$CreateEmployee {
  const factory CreateEmployee({
    required CreateEmployeeUuid uuid,
    required CreateEmployeeName name,
    required CreateEmployeeCode code,
    required CreateEmployeePhoneNumber phoneNumber,
    required CreateEmployeeEmail email,
    required CreateEmployeeDepartment department,
    required CreateEmployeeAccountId accountId,
  }) = _CreateEmployee;

  factory CreateEmployee.empty() => CreateEmployee(
      uuid: CreateEmployeeUuid(''),
      name: CreateEmployeeName(''),
      code: CreateEmployeeCode(''),
      phoneNumber: CreateEmployeePhoneNumber(''),
      email: CreateEmployeeEmail(''),
      department: CreateEmployeeDepartment(null),
      accountId: CreateEmployeeAccountId(null));
}

extension CreateEmployeeX on CreateEmployee {
  Option<ObjectValueFailure> get failureOption {
    return name.failureOrUnit
        .andThen(code.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(department.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}

// @freezed
// class EditCatalogItem with _$EditCatalogItem {
//   const factory EditCatalogItem({
//     required EditCatalogItemId ids,
//     required EditCatalogItemCode code,
//     required EditCatalogItemBarcode barcode,
//     required EditCatalogItemName name,
//     required EditCatalogItemDescription description,
//     required EditCatalogItemSellPrice sellPrice,
//     required EditCatalogItemSellDisc sellDisc,
//     required EditCatalogItemPurchasePrice purchasePrice,
//     required EditCatalogItemPurchaseDisc purchaseDisc,
//     required EditCatalogItemStock stock,
//     required EditCatalogItemCategory category,
//     required EditCatalogItemImage image,
//     required EditCatalogItemImageFile imageFile,
//   }) = _EditCatalogItem;

//   factory EditCatalogItem.empty() => EditCatalogItem(
//       ids: EditCatalogItemId(''),
//       code: EditCatalogItemCode(''),
//       barcode: EditCatalogItemBarcode(null),
//       name: EditCatalogItemName(''),
//       description: EditCatalogItemDescription(''),
//       sellPrice: EditCatalogItemSellPrice(''),
//       sellDisc: EditCatalogItemSellDisc(null),
//       purchasePrice: EditCatalogItemPurchasePrice(''),
//       purchaseDisc: EditCatalogItemPurchaseDisc(null),
//       stock: EditCatalogItemStock(''),
//       category: EditCatalogItemCategory(''),
//       image: EditCatalogItemImage(null),
//       imageFile: EditCatalogItemImageFile(null));
// }

// extension EditCatalogItemX on EditCatalogItem {
//   Option<ObjectValueFailure> get failureOption {
//     return ids.failureOrUnit
//         .andThen(code.failureOrUnit)
//         .andThen(name.failureOrUnit)
//         .andThen(description.failureOrUnit)
//         .andThen(sellPrice.failureOrUnit)
//         .andThen(sellDisc.failureOrUnit)
//         .andThen(purchasePrice.failureOrUnit)
//         .andThen(purchaseDisc.failureOrUnit)
//         .andThen(stock.failureOrUnit)
//         .andThen(category.failureOrUnit)
//         .andThen(image.failureOrUnit)
//         .andThen(imageFile.failureOrUnit)
//         .fold((l) => some(l), (r) => none());
//   }
// }
