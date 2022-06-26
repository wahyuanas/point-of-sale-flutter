import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_view/photo_view.dart';
import 'package:pos/presentation/main/catalog/form/create/cubit/catalog_form_create_cubit.dart';

class PosCatalogFormImageWidget extends StatefulWidget {
  const PosCatalogFormImageWidget({Key? key}) : super(key: key);

  @override
  State<PosCatalogFormImageWidget> createState() =>
      _PosCatalogFormImageWidgetState();
}

class _PosCatalogFormImageWidgetState extends State<PosCatalogFormImageWidget> {
  final ImagePicker _picker = ImagePicker();
  String? base64string;
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: BlocBuilder<CatalogFormCreateCubit, CatalogFormCreateState>(
            buildWhen: (p, c) {
      _initial = false;
      return p.createCatalogItem.image != c.createCatalogItem.image ||
          p.failOrUnit != c.failOrUnit;
    }, builder: (context, state) {
      return Column(
        children: [
          Row(mainAxisSize: MainAxisSize.min, children: [
            _pickGallery(),
            const Expanded(
                child: Center(
              child: Text(
                "P H O T O",
                style: TextStyle(
                    //fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 15.0),
              ),
            )),
            _pickCamera(),
          ]),
          Container(
            height: 180,
            width: 300,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: state.createCatalogItem.image.value.fold(
                (l) => null,
                (r) => r == null
                    ? const Center(
                        child: Text(
                          "Belum Ada Photo",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _hideKeyboard();
                          _open(context, r);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.memory(
                                    base64.decode(r),
                                    fit: BoxFit.cover,
                                    width: 1100,
                                  ),
                                ),
                              ),
                              //Image.network(item, fit: BoxFit.cover, width: 1000.0),
                              Positioned(
                                top: 10.0,
                                right: 10.0,
                                child: Container(
                                  height: 37,
                                  width: 37,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      onPressed: () {
                                        BlocProvider.of<CatalogFormCreateCubit>(
                                                context)
                                            .onCreateCatalogItemImageChanged(
                                                null);
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        size: 23,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
          ),
        ],
      );
    }));
  }

  Widget _pickGallery() {
    return Expanded(
        child: Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () async {
          _hideKeyboard();
          final pickedFile = await _picker.pickImage(
            source: ImageSource.gallery,
            // imageQuality: 50,
            // maxWidth: 300,
            // maxHeight: 300
          );
          if (pickedFile != null) {
            File file = File(pickedFile.path);
            Uint8List imagebytes = await file.readAsBytes(); //convert to bytes

            base64string = base64.encode(imagebytes);
            if (!mounted) return;
            BlocProvider.of<CatalogFormCreateCubit>(context)
                .onCreateCatalogItemImageChanged(base64string);
          }
        },
        child: const Icon(Icons.image_outlined, size: 40, color: Colors.blue),
      ),
    ));
  }

  Widget _pickCamera() {
    return Expanded(
        child: Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () async {
          _hideKeyboard();
          final pickedFile = await _picker.pickImage(
            source: ImageSource.camera,
            //imageQuality: 70,
            //maxWidth: 1000,
            //maxHeight: 1000
          );
          if (pickedFile != null) {
            File file = File(pickedFile.path);
            Uint8List imagebytes = await file.readAsBytes(); //convert to bytes
            base64string =
                base64.encode(imagebytes); //convert bytes to base64 string
            if (!mounted) return;
            BlocProvider.of<CatalogFormCreateCubit>(context)
                .onCreateCatalogItemImageChanged(base64string);

            //debugPrint(base64string);

          }
        },
        child: const Icon(Icons.camera_outlined, size: 40, color: Colors.blue),
      ),
    ));
  }

  void _hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void _open(BuildContext context, String r) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => AnnotatedRegion<SystemUiOverlayStyle>(
                  value: const SystemUiOverlayStyle(
                      statusBarColor: Colors.transparent),
                  child: PhotoView(
                    imageProvider: Image.memory(
                      base64.decode(r),
                    ).image,
                  ),
                )));
  }
}
