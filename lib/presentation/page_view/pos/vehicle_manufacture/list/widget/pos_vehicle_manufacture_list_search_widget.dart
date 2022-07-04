import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/vehicle_manufacture/list/cubit/pos_vehicle_manufacture_list_cubit.dart';
import 'package:pos/presentation/utils/colors.dart';

class PosVehicleManufactureListSearchWidget extends StatefulWidget {
  const PosVehicleManufactureListSearchWidget({Key? key}) : super(key: key);

  @override
  State<PosVehicleManufactureListSearchWidget> createState() =>
      _PosVehicleManufactureListSearchWidgetState();
}

class _PosVehicleManufactureListSearchWidgetState
    extends State<PosVehicleManufactureListSearchWidget> {
  late TextEditingController _controller;
  bool _textFilled = false;
  late FocusNode _focusNode;

  @override
  void initState() {
    _controller = TextEditingController();
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          child: SizedBox(
        height: 60,
        child: TextFormField(
          focusNode: _focusNode,
          onChanged: ((value) {
            context
                .read<PosVehicleManufactureListCubit>()
                .onSearchKeyChanged(value);
            if (value.isNotEmpty) {
              if (_textFilled == false) {
                setState(() {
                  _textFilled = true;
                });
              }
            } else {
              if (_textFilled == true) {
                setState(() {
                  _textFilled = false;
                });
              }
            }
          }),
          onTap: () async {},
          controller: _controller,
          //autofocus: true,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            suffixIcon: _textFilled
                ? GestureDetector(
                    onTap: () {
                      _controller.text = "";
                      FocusScope.of(context).requestFocus(_focusNode);
                      context.read<PosVehicleManufactureListCubit>().onReset();
                      setState(() {
                        _textFilled = false;
                      });
                    },
                    child: const Icon(
                      Icons.close,
                      size: 23,
                    ))
                : null,

            filled: true,
            fillColor: Colors.white,
            hintText: "Cari Manufaktur Kendaraan...",
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
                  color: AppColors.searchBorderSideColor1, width: 0.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.searchBorderSideColor1, width: 0.5),
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
