import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

import 'object_value_failure.dart';

Either<FormItemObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormItemObjectValueFailure<String, String>, XFile?>
    validateFieldNullNotXFile(XFile? input) {
  if (input == null) {
    return right(null);
  } else if (input.runtimeType != XFile) {
    return left(const FormItemObjectValueFailure.emptyField(
        failedValue: 'not XFILE Type'));
  } else {
    return right(input);
  }
}

Either<FormItemObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(FormItemObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(
        FormItemObjectValueFailure.exceptOneToNineAllowed(failedValue: input));
  } else if (int.tryParse(input.replaceAll('.', '')) == null) {
    return left(FormItemObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input.replaceAll('.', '')));
  }
}

Either<FormItemObjectValueFailure<String, String>, double>
    validateFieldNotIntAndNotEmptyButPoint(String input) {
  if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(FormItemObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(
        FormItemObjectValueFailure.exceptOneToNineAllowed(failedValue: input));
  } else if (double.tryParse(input) == null) {
    return left(FormItemObjectValueFailure.notDoubleField(failedValue: input));
  } else {
    return right(double.tryParse(input)!);
  }
}

Either<FormItemObjectValueFailure<String, String>, int?>
    validateFieldNullNotIntAndEmpty(String? input) {
  if (input == null) {
    return right(null);
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(FormItemObjectValueFailure.noSpaceAllowed(failedValue: input));
  } else if (input.isNotEmpty) {
    if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1)) &&
        ((input.length > 1 && input.substring(0, 1) == '0') ||
            (input.substring(0, 1) != '0'))) {
      return left(FormItemObjectValueFailure.exceptOneToNineAllowed(
          failedValue: input));
    } else if (int.tryParse(input) == null) {
      return left(FormItemObjectValueFailure.notIntField(failedValue: input));
    } else {
      if (input == '0') {
        return right(null);
      }
      return right(int.parse(input));
    }
  } else {
    return right(null);
  }
}

Either<FormItemObjectValueFailure<String, String>, int?>
    validateFieldNullNotIntAndNotEmpty(String? input) {
  if (input == null) {
    return right(null);
  } else if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<FormItemObjectValueFailure<String, String>, String?>
    validateFieldNullOrEmpty(String? input) {
  if (input == null) {
    return right(null);
  } else if (input.isEmpty) {
    return right(null);
  } else {
    return right(input);
  }
}

Either<FormItemObjectValueFailure<String, String>, String?>
    validateFieldNullNotEmpty(String? input) {
  if (input == null) {
    return right(null);
  } else if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}
