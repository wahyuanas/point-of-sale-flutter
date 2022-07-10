import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

import 'object_value.dart';

part "customer_object_value.freezed.dart";

@freezed
class CreateCustomer with _$CreateCustomer {
  const factory CreateCustomer({
    required CreateCustomerUuid uuid,
    required CreateCustomerName name,
    required CreateCustomerCode code,
    required CreateCustomerPhoneNumber phoneNumber,
    required CreateCustomerEmail email,
    required CreateCustomerType type,
    required CreateCustomerAddress address,
    required CreateCustomerAccountId accountId,
  }) = _CreateCustomer;

  factory CreateCustomer.empty() => CreateCustomer(
      uuid: CreateCustomerUuid(''),
      name: CreateCustomerName(''),
      code: CreateCustomerCode(''),
      phoneNumber: CreateCustomerPhoneNumber(''),
      email: CreateCustomerEmail(''),
      type: CreateCustomerType(''),
      address: CreateCustomerAddress(''),
      accountId: CreateCustomerAccountId(null));
}

extension CreateCustomerX on CreateCustomer {
  Option<ObjectValueFailure> get failureOption {
    return name.failureOrUnit
        .andThen(code.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(type.failureOrUnit)
        .andThen(address.failureOrUnit)
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
