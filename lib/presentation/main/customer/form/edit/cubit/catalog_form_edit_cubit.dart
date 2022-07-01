import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/application/account/i_account_service.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/catalog/item/object_value/item_object_value.dart';
import 'package:pos/domain/catalog/item/object_value/object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/state_status.dart';

part 'catalog_form_edit_state.dart';
part 'catalog_form_edit_cubit.freezed.dart';

class CatalogFormEditCubit extends Cubit<CatalogFormEditState> {
  final IAccountService accountService;
  @override
  CatalogFormEditCubit({required this.accountService})
      : super(CatalogFormEditState.initial());

  void onCreateItemCodeChanged(String v) {
    emit(state.copyWith(
      editCatalogItem:
          state.editCatalogItem.copyWith(code: EditCatalogItemCode(v)),
    ));
  }

  void onCreateItemBarcodeChanged(String v) async {
    // final ImagePicker imgpicker = ImagePicker();
    // var pickedFile = await imgpicker.pickImage(source: ImageSource.gallery);
    // //you can use ImageCourse.camera for Camera capture
    // if (pickedFile != null) {
    //    var imagepath = pickedFile.path;
    //           print(imagepath);
    //           //output /data/user/0/com.example.testapp/cache/image_picker7973898508152261600.jpg

    //           File imagefile = File(imagepath); //convert Path to File
    //           Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
    //           String base64string = base64.encode(imagebytes); //convert bytes to base64 string
    //           print(base64string);
    //           Image.memory(base64Decode(base64string));

    // }

    emit(state.copyWith(
      editCatalogItem:
          state.editCatalogItem.copyWith(barcode: EditCatalogItemBarcode(v)),
    ));
  }
}
