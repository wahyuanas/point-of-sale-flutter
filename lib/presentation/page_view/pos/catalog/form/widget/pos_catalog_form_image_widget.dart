import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PosCatalogFormImageWidget extends StatefulWidget {
  const PosCatalogFormImageWidget({Key? key}) : super(key: key);

  @override
  State<PosCatalogFormImageWidget> createState() =>
      _PosCatalogFormImageWidgetState();
}

class _PosCatalogFormImageWidgetState extends State<PosCatalogFormImageWidget> {
  final ImagePicker _picker = ImagePicker();
  String? base64string;
  @override
  Widget build(BuildContext context) {
    debugPrint("BUILDERRRRRRRRRRRRRRRRRRRRRRRRRRRR $base64string");
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(children: [
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
            child: base64string == null
                ? const Center(
                    child: Text(
                      "Belum Ada Photo",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  )
                : Image.memory(base64.decode(base64string!)),
          ),
          // Card(
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          //   child: GestureDetector(
          //     onTap: () {},
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(20.0),
          //         boxShadow: const [
          //           BoxShadow(
          //             color: Colors.black26,
          //             offset: Offset(0.0, 2.0),
          //             blurRadius: 6.0,
          //           ),
          //         ],
          //       ),
          //       child: Stack(
          //         children: <Widget>[
          //           Container(
          //             decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(20.0),
          //               boxShadow: const [
          //                 BoxShadow(
          //                   color: Colors.black26,
          //                   offset: Offset(0.0, 2.0),
          //                   blurRadius: 6.0,
          //                 ),
          //               ],
          //             ),
          //             child: ClipRRect(
          //               borderRadius: BorderRadius.circular(12.0),
          //               child: Container(
          //                 child: Text("OK"),
          //               ),
          //             ),
          //           ),
          //           //Image.network(item, fit: BoxFit.cover, width: 1000.0),
          //           Positioned(
          //             top: 10.0,
          //             right: 10.0,
          //             child: Container(
          //               height: 37,
          //               width: 37,
          //               decoration: const BoxDecoration(
          //                 color: Colors.white,
          //                 borderRadius: BorderRadius.all(Radius.circular(50.0)),
          //               ),
          //               child: Align(
          //                 alignment: Alignment.center,
          //                 child: IconButton(
          //                   onPressed: () {},
          //                   icon: const Icon(
          //                     Icons.delete,
          //                     size: 23,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Widget _pickGallery() {
    return Expanded(
        child: GestureDetector(
      onTap: () async {
        _hideKeyboard();
        final pickedFile = await _picker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 50,
            maxWidth: 300,
            maxHeight: 300);
        if (pickedFile != null) {
          File file = File(pickedFile.path);
          Uint8List imagebytes = await file.readAsBytes(); //convert to bytes
          base64string =
              base64.encode(imagebytes); //convert bytes to base64 string
          debugPrint(base64string);
          setState(() {});
        }
      },
      child: const Icon(Icons.image_outlined, size: 40, color: Colors.blue),
    ));
  }

  Widget _pickCamera() {
    return Expanded(
        child: GestureDetector(
      onTap: () async {
        _hideKeyboard();
        final pickedFile = await _picker.pickImage(
            source: ImageSource.camera,
            imageQuality: 70,
            maxWidth: 1000,
            maxHeight: 1000);
        if (pickedFile != null) {
          File file = File(pickedFile.path);
          Uint8List imagebytes = await file.readAsBytes(); //convert to bytes
          base64string =
              base64.encode(imagebytes); //convert bytes to base64 string
          debugPrint(base64string);
          setState(() {});
        }
      },
      child: const Icon(Icons.camera_outlined, size: 40, color: Colors.blue),
    ));
  }

  void _hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
