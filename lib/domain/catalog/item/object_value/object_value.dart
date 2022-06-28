import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pos/domain/core/object_value/object_value.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class CreateCatalogItemUuid extends ObjectValue<String> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String> value;

  factory CreateCatalogItemUuid(String input) {
    return CreateCatalogItemUuid._(validateFieldStringNotEmpty(input));
  }

  const CreateCatalogItemUuid._(this.value);
}

class CreateCatalogItemCode extends ObjectValue<String> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String> value;

  factory CreateCatalogItemCode(String input) {
    return CreateCatalogItemCode._(validateFieldStringNotEmpty(input));
  }

  const CreateCatalogItemCode._(this.value);
}

class CreateCatalogItemBarcode extends ObjectValue<String?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String?> value;

  factory CreateCatalogItemBarcode(String? input) {
    debugPrint("OBJECT CATALOG DOMAIN");
    return CreateCatalogItemBarcode._(validateFieldNullOrEmpty(input));
  }

  const CreateCatalogItemBarcode._(this.value);
}

class CreateCatalogItemName extends ObjectValue<String> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String> value;

  factory CreateCatalogItemName(String input) {
    return CreateCatalogItemName._(validateFieldStringNotEmpty(input));
  }

  const CreateCatalogItemName._(this.value);
}

class CreateCatalogItemDescription extends ObjectValue<String> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String> value;

  factory CreateCatalogItemDescription(String input) {
    return CreateCatalogItemDescription._(validateFieldStringNotEmpty(input));
  }

  const CreateCatalogItemDescription._(this.value);
}

class CreateCatalogItemSellPrice extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory CreateCatalogItemSellPrice(String input) {
    return CreateCatalogItemSellPrice._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateCatalogItemSellPrice._(this.value);
}

class CreateCatalogItemSellDisc extends ObjectValue<int?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int?> value;

  factory CreateCatalogItemSellDisc(String? input) {
    return CreateCatalogItemSellDisc._(validateFieldNullNotIntAndEmpty(input));
  }

  const CreateCatalogItemSellDisc._(this.value);
}

class CreateCatalogItemPurchasePrice extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory CreateCatalogItemPurchasePrice(String input) {
    return CreateCatalogItemPurchasePrice._(
        validateFieldNotIntAndNotEmpty(input));
  }

  const CreateCatalogItemPurchasePrice._(this.value);
}

class CreateCatalogItemPurchaseDisc extends ObjectValue<int?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int?> value;

  factory CreateCatalogItemPurchaseDisc(String? input) {
    return CreateCatalogItemPurchaseDisc._(
        validateFieldNullNotIntAndEmpty(input));
  }

  const CreateCatalogItemPurchaseDisc._(this.value);
}

class CreateCatalogItemStock extends ObjectValue<double> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, double> value;

  factory CreateCatalogItemStock(String input) {
    return CreateCatalogItemStock._(
        validateFieldNotIntAndNotEmptyButPoint(input));
  }

  const CreateCatalogItemStock._(this.value);
}

class CreateCatalogItemCategory extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory CreateCatalogItemCategory(String input) {
    return CreateCatalogItemCategory._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateCatalogItemCategory._(this.value);
}

class CreateCatalogItemImage extends ObjectValue<String?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String?> value;

  factory CreateCatalogItemImage(String? input) {
    return CreateCatalogItemImage._(validateFieldNullOrEmpty(input));
  }

  const CreateCatalogItemImage._(this.value);
}

class CreateCatalogItemImageFile extends ObjectValue<XFile?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, XFile?> value;

  factory CreateCatalogItemImageFile(XFile? input) {
    return CreateCatalogItemImageFile._(validateFieldNullNotXFile(input));
  }

  const CreateCatalogItemImageFile._(this.value);
}

class EditCatalogItemId extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory EditCatalogItemId(String input) {
    return EditCatalogItemId._(validateFieldNotIntAndNotEmpty(input));
  }

  const EditCatalogItemId._(this.value);
}

class EditCatalogItemCode extends ObjectValue<String> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String> value;

  factory EditCatalogItemCode(String input) {
    return EditCatalogItemCode._(validateFieldStringNotEmpty(input));
  }

  const EditCatalogItemCode._(this.value);
}

class EditCatalogItemBarcode extends ObjectValue<String?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String?> value;

  factory EditCatalogItemBarcode(String? input) {
    return EditCatalogItemBarcode._(validateFieldNullNotEmpty(input));
  }

  const EditCatalogItemBarcode._(this.value);
}

class EditCatalogItemName extends ObjectValue<String> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String> value;

  factory EditCatalogItemName(String input) {
    return EditCatalogItemName._(validateFieldStringNotEmpty(input));
  }

  const EditCatalogItemName._(this.value);
}

class EditCatalogItemDescription extends ObjectValue<String> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String> value;

  factory EditCatalogItemDescription(String input) {
    return EditCatalogItemDescription._(validateFieldStringNotEmpty(input));
  }

  const EditCatalogItemDescription._(this.value);
}

class EditCatalogItemSellPrice extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory EditCatalogItemSellPrice(String input) {
    return EditCatalogItemSellPrice._(validateFieldNotIntAndNotEmpty(input));
  }

  const EditCatalogItemSellPrice._(this.value);
}

class EditCatalogItemSellDisc extends ObjectValue<int?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int?> value;

  factory EditCatalogItemSellDisc(String? input) {
    return EditCatalogItemSellDisc._(validateFieldNullNotIntAndEmpty(input));
  }

  const EditCatalogItemSellDisc._(this.value);
}

class EditCatalogItemPurchasePrice extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory EditCatalogItemPurchasePrice(String input) {
    return EditCatalogItemPurchasePrice._(
        validateFieldNotIntAndNotEmpty(input));
  }

  const EditCatalogItemPurchasePrice._(this.value);
}

class EditCatalogItemPurchaseDisc extends ObjectValue<int?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int?> value;

  factory EditCatalogItemPurchaseDisc(String? input) {
    return EditCatalogItemPurchaseDisc._(
        validateFieldNullNotIntAndEmpty(input));
  }

  const EditCatalogItemPurchaseDisc._(this.value);
}

class EditCatalogItemStock extends ObjectValue<double> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, double> value;

  factory EditCatalogItemStock(String input) {
    return EditCatalogItemStock._(
        validateFieldNotIntAndNotEmptyButPoint(input));
  }

  const EditCatalogItemStock._(this.value);
}

class EditCatalogItemCategory extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory EditCatalogItemCategory(String input) {
    return EditCatalogItemCategory._(validateFieldNotIntAndNotEmpty(input));
  }

  const EditCatalogItemCategory._(this.value);
}

class EditCatalogItemImage extends ObjectValue<String?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String?> value;

  factory EditCatalogItemImage(String? input) {
    return EditCatalogItemImage._(validateFieldNullOrEmpty(input));
  }

  const EditCatalogItemImage._(this.value);
}

class EditCatalogItemImageFile extends ObjectValue<XFile?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, XFile?> value;

  factory EditCatalogItemImageFile(XFile? input) {
    return EditCatalogItemImageFile._(validateFieldNullNotXFile(input));
  }

  const EditCatalogItemImageFile._(this.value);
}
