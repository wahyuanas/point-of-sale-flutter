import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/common/wrapper/show_up_text_animation.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';
import 'package:pos/presentation/utils/colors.dart';

import 'pos_catalog_item_detail_bottom_sheet_widget.dart';

class PosCatalogItemDetailWidget extends StatefulWidget {
  const PosCatalogItemDetailWidget({Key? key, required this.item})
      : super(key: key);

  final Item item;

  @override
  State<PosCatalogItemDetailWidget> createState() =>
      _PosCatalogItemDetailWidgetState();
}

class _PosCatalogItemDetailWidgetState
    extends State<PosCatalogItemDetailWidget> {
  final ScrollController controller = ScrollController();
  Pos? pos;
  bool _rebuild = false;
  bool _rebuildB = false;
  bool _rebuildC = false;
  @override
  void initState() {
    int? index = BlocProvider.of<PosMainBloc>(context)
        .state
        .poss
        ?.indexWhere((posc) => posc.item.id == widget.item.id);
    if (index != null) {
      if (index >= 0) {
        pos = BlocProvider.of<PosMainBloc>(context).state.poss![index];
      }
    }
    controller.addListener(() {
      //debugPrint("${controller.position.pixels}");
      if (controller.position.pixels >=
          MediaQuery.of(context).size.height * 0.3 -
              MediaQuery.of(context).viewPadding.top) {
        if (_rebuild == false) {
          setState(() {
            _rebuild = true;
          });
        }
      } else {
        if (_rebuild == true) {
          setState(() {
            _rebuild = false;
          });
        }
      }
      if (controller.position.pixels >=
          (widget.item.name.length <= 31
              ? MediaQuery.of(context).size.height * 0.3 -
                  MediaQuery.of(context).viewPadding.top
              : MediaQuery.of(context).size.height * 0.3 -
                  MediaQuery.of(context).viewPadding.top -
                  10)) {
        if (_rebuildB == false) {
          setState(() {
            _rebuildB = true;
          });
        }
      } else {
        if (_rebuildB == true) {
          setState(() {
            _rebuildB = false;
          });
        }
      }
      if (controller.position.pixels >=
          MediaQuery.of(context).size.height * 0.3 -
              (2 * MediaQuery.of(context).viewPadding.top) -
              10) {
        if (_rebuildC == false) {
          setState(() {
            _rebuildC = true;
          });
        }
      } else {
        if (_rebuildC == true) {
          setState(() {
            _rebuildC = false;
          });
        }
      }
    });

    super.initState();
  }

  // @override
  // void didUpdateWidget(covariant PosCatalogItemDetailWidget oldWidget) {
  //   int? index = BlocProvider.of<CartBloc>(context)
  //       .state
  //       .carts
  //       ?.indexWhere((_cart) => _cart.item.id == widget.item.id);
  //   if (index != null) {
  //     if (index >= 0) {
  //       cart = BlocProvider.of<CartBloc>(context).state.carts![index];
  //     }
  //   }
  //   super.didUpdateWidget(oldWidget);
  // }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        //backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            titleSpacing: 0.0,
            toolbarOpacity: 1.0,
            bottomOpacity: 0.5,
            backgroundColor: _rebuild == true
                ? AppColors.appBarBackgroundColor
                : AppColors.appBarBackgroundColor1,
            // systemOverlayStyle: SystemUiOverlayStyleApp.setSystemUIOverlayStyle(
            //     _rebuild == true ? const Color(0xFFFFFFFF) : Colors.transparent,
            //     Brightness.dark,
            //     Brightness.dark),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor:
                  _rebuild == true ? Colors.white : Colors.transparent,
              //systemNavigationBarColor: Colors.black,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
            elevation: 0,
            leading: Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 0, top: 0, bottom: 10),
              child: Container(
                alignment: Alignment.center,
                //height: 30,
                //width: 30,
                decoration: BoxDecoration(
                  color: _rebuildC == true
                      ? AppColors.appBarBackgroundColor1
                      : AppColors.appBarBackgroundColor,
                  borderRadius: _rebuildC == true
                      ? null
                      : const BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: IconButton(
                    color: Colors.blue,
                    onPressed: () {
                      debugPrint("POP");
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.black, size: 25.0),
                  ),
                ),
              ),
            ),
            actions: [],
            title: _rebuildB == true
                ? ShowUpAnimation(
                    curve: Curves.decelerate,
                    fadeBegin: 0.5,
                    offset: 0.3,
                    //delayStart: const Duration(milliseconds: 0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text(
                        widget.item.name,
                        key: const Key('item_detail'),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  )
                : Container(),
          ),
        ),
        bottomSheet:
            PosCatalogItemDetailBottomSheetWidget(pos: pos, item: widget.item),
        body: BlocListener<PosMainBloc, PosMainState>(
          listener: (context, state) {
            if (state.idItem == widget.item.id) {
              pos = null;
              int? index = state.poss
                  ?.indexWhere((posc) => posc.item.id == widget.item.id);
              if (index != null) {
                if (index >= 0) {
                  pos = state.poss![index];
                }
              }
              setState(() {});
            }
          },
          child: SingleChildScrollView(
            controller: controller,
            child: Column(children: [
              //const SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: Image.file(File(widget.item.image!)).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
              Text(
                  "data xzcnmxznmcxzmcnxzm xzmcnmxzncmxzncshdjsajds sdajdhjsadsdjs"),
            ]),
          ),
        ));
  }
}
