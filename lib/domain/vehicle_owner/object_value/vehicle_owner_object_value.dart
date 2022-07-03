import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

import 'object_value.dart';

part "vehicle_owner_object_value.freezed.dart";

@freezed
class CreateVehicleOwner with _$CreateVehicleOwner {
  const factory CreateVehicleOwner({
    required CreateVehicleOwnerUuid uuid,
    required CreateVehicleOwnerName name,
    required CreateVehicleOwnerPhoneNumber phoneNumber,
    required CreateVehicleOwnerEmail email,
    required CreateVehicleOwnerIdNumber idNumber,
    required CreateVehicleOwnerAddress address,
  }) = _CreateVehicleOwner;

  factory CreateVehicleOwner.empty() => CreateVehicleOwner(
      uuid: CreateVehicleOwnerUuid(''),
      name: CreateVehicleOwnerName(''),
      phoneNumber: CreateVehicleOwnerPhoneNumber(''),
      email: CreateVehicleOwnerEmail(''),
      idNumber: CreateVehicleOwnerIdNumber(''),
      address: CreateVehicleOwnerAddress(''));
}

extension CreateVehicleOwnerX on CreateVehicleOwner {
  Option<ObjectValueFailure> get failureOption {
    return name.failureOrUnit
        .andThen(phoneNumber.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(idNumber.failureOrUnit)
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
