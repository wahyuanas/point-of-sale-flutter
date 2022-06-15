import 'package:flutter/material.dart';
import 'package:pos/presentation/utils/colors.dart';

class SearchFaktur extends StatefulWidget {
  const SearchFaktur({Key? key}) : super(key: key);

  @override
  State<SearchFaktur> createState() => _SearchFakturState();
}

class _SearchFakturState extends State<SearchFaktur> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          child: SizedBox(
        height: 50,
        child: TextFormField(
          onTap: () async {},
          controller: _controller,
          //autofocus: true,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Cari...",
            //hintTextDirection: TextDirection.ltr,
            alignLabelWithHint: true,
            hintStyle: const TextStyle(fontSize: 13.0),
            isDense: true,
            contentPadding:
                const EdgeInsets.only(top: 15), // control your hints text size
            //contentPadding: const EdgeInsets.symmetric(vertical: 10),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  color: AppColors.searchBorderSideColor, width: 0.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.searchBorderSideColor, width: 0.5),
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  color: AppColors.searchBorderSideColor, width: 0.5),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide.none,
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(bottom: 12, top: 10),
              child: Icon(Icons.search_outlined

                  // SvgPicture.asset(
                  //   "assets/icons/Search.svg",
                  // ),
                  ),
            ),
          ),
        ),
      )),
    );
  }
}
