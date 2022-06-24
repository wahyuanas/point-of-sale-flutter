import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/object_value.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

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
    return CreateCatalogItemBarcode._(validateFieldNullNotEmpty(input));
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
    return CreateCatalogItemSellDisc._(
        validateFieldNullNotIntAndNotEmpty(input));
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
        validateFieldNullNotIntAndNotEmpty(input));
  }

  const CreateCatalogItemPurchaseDisc._(this.value);
}

class CreateCatalogItemStock extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory CreateCatalogItemStock(String input) {
    return CreateCatalogItemStock._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateCatalogItemStock._(this.value);
}

class CreateCatalogItemCategry extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory CreateCatalogItemCategry(String input) {
    return CreateCatalogItemCategry._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateCatalogItemCategry._(this.value);
}

class CreateCatalogItemImage extends ObjectValue<String?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String?> value;

  factory CreateCatalogItemImage(String? input) {
    return CreateCatalogItemImage._(validateFieldNullNotEmpty(input));
  }

  const CreateCatalogItemImage._(this.value);
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
    return EditCatalogItemSellDisc._(validateFieldNullNotIntAndNotEmpty(input));
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
        validateFieldNullNotIntAndNotEmpty(input));
  }

  const EditCatalogItemPurchaseDisc._(this.value);
}

class EditCatalogItemStock extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory EditCatalogItemStock(String input) {
    return EditCatalogItemStock._(validateFieldNotIntAndNotEmpty(input));
  }

  const EditCatalogItemStock._(this.value);
}

class EditCatalogItemCategry extends ObjectValue<int> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, int> value;

  factory EditCatalogItemCategry(String input) {
    return EditCatalogItemCategry._(validateFieldNotIntAndNotEmpty(input));
  }

  const EditCatalogItemCategry._(this.value);
}

class EditCatalogItemImage extends ObjectValue<String?> {
  @override
  final Either<FormItemObjectValueFailure<String, String>, String?> value;

  factory EditCatalogItemImage(String? input) {
    return EditCatalogItemImage._(validateFieldNullNotEmpty(input));
  }

  const EditCatalogItemImage._(this.value);
}