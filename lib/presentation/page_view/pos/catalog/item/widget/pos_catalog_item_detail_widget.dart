import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/common/wrapper/show_up_text_animation.dart';
import 'package:pos/presentation/page_view/pos/catalog/item/cubit/pos_catalog_item_transition_app_bar_cubit.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';
import 'package:pos/presentation/utils/colors.dart';

import 'pos_catalog_item_detail_bottom_sheet_widget.dart';

class PosCatalogItemDetailWidget extends StatefulWidget {
  const PosCatalogItemDetailWidget(
      {Key? key, required this.item, required this.controller})
      : super(key: key);

  final Item item;
  final ScrollController controller;

  @override
  State<PosCatalogItemDetailWidget> createState() =>
      _PosCatalogItemDetailWidgetState();
}

class _PosCatalogItemDetailWidgetState extends State<PosCatalogItemDetailWidget>
    with WidgetsBindingObserver {
  Pos? pos;
  double? _heightImage;
  double? _heightAppBar;
  double? _heightStatusBar;
  double? _heightIconBackArrow;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    int? index = BlocProvider.of<PosMainBloc>(context)
        .state
        .poss
        ?.indexWhere((posc) => posc.item.id == widget.item.id);
    if (index != null) {
      if (index >= 0) {
        pos = BlocProvider.of<PosMainBloc>(context).state.poss![index];
      }
    }

    super.initState();
  }

  @override
  void didChangeMetrics() {
    orientationChanged();

    debugPrint("POS CATALOG ITEM DETAIL WIDGET DIDCHANGED METRICS");
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  orientationChanged() async {
    final mq = MediaQuery.of(context);
    _heightImage = mq.size.height * 0.3;
    _heightStatusBar = mq.viewPadding.top;
    _heightAppBar = 50;
    _heightIconBackArrow = 5;

    BlocProvider.of<PosCatalogItemTransitionAppBarCubit>(context).onRestarted(
        _heightImage ?? 0,
        _heightStatusBar ?? 0,
        _heightAppBar ?? 0,
        _heightIconBackArrow ?? 0);

    await Future.delayed(const Duration(milliseconds: 100));
    if (!mounted) return;
    BlocProvider.of<PosCatalogItemTransitionAppBarCubit>(context).onScroll();
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
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        //backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(50.0), // here the desired height
            child: BlocBuilder<PosCatalogItemTransitionAppBarCubit,
                PosCatalogItemTransitionAppBarState>(
              buildWhen: ((p, c) {
                return p.builder != c.builder ||
                    p.builder1 != c.builder1 ||
                    p.builder2 != c.builder2;
              }),
              builder: (context, state) {
                return AppBar(
                  titleSpacing: 0.0,
                  toolbarOpacity: 1.0,
                  bottomOpacity: 0.5,
                  backgroundColor: state.builder == true
                      ? AppColors.appBarBackgroundColor
                      : AppColors.appBarBackgroundColor1,
                  // systemOverlayStyle: SystemUiOverlayStyleApp.setSystemUIOverlayStyle(
                  //     _rebuild == true ? const Color(0xFFFFFFFF) : Colors.transparent,
                  //     Brightness.dark,
                  //     Brightness.dark),
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: state.builder == true
                        ? Colors.white
                        : Colors.transparent,
                    //systemNavigationBarColor: Colors.black,
                    statusBarIconBrightness: Brightness.dark,
                    systemNavigationBarIconBrightness: Brightness.dark,
                  ),
                  elevation: 0,
                  leading: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 0, top: 5, bottom: 5),
                    child: Container(
                      alignment: Alignment.center,
                      //height: 30,
                      //width: 30,
                      decoration: BoxDecoration(
                        color: state.builder2 == true
                            ? AppColors.appBarBackgroundColor1
                            : AppColors.appBarBackgroundColor,
                        borderRadius: state.builder2 == true
                            ? null
                            : const BorderRadius.all(Radius.circular(50.0)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.arrow_back,
                              color: Colors.black, size: 25.0),
                        ),
                      ),
                    ),
                  ),
                  //actions: [],
                  title: state.builder1 == true
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
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ),
                        )
                      : Container(),
                );
              },
            )),
        bottomSheet: PosCatalogItemDetailBottomSheetWidget(item: widget.item),
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
            controller: widget.controller,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //const SizedBox(height: 30),
              widget.item.image == null
                  ? Align(
                      child: Image.asset(
                        "assets/images/no-image.png",
                        gaplessPlayback: true,
                        fit: BoxFit.fill,
                        width: mq.size.width,
                        height: mq.size.height * 0.3,
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.file(
                        File(widget.item.image ?? ""),
                        fit: BoxFit.cover,
                        width: mq.size.width,
                        height: mq.size.height * 0.3,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            "assets/images/not-found.png",
                            width: mq.size.width,
                            height: mq.size.height * 0.3,
                          );
                        },
                      ),
                    ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  widget.item.name,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Kode',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  widget.item.code,
                  style: const TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Keterangan',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  widget.item.description,
                  style: const TextStyle(
                      fontSize: 17, color: Colors.black, height: 1),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Harga',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: 'Rp. ', decimalDigits: 0)
                      .format(widget.item.sellPrice),
                  style: const TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Discount',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              (widget.item.sellDisc ?? 0).toString().split('.')[1].length ==
                          1 &&
                      (widget.item.sellDisc ?? 0).toString().split('.')[1] ==
                          '0'
                  ? Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                          "${(widget.item.sellDisc ?? 0).toString().split('.')[0]}%",
                          style: const TextStyle(fontSize: 17)),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text("${widget.item.sellDisc ?? 0}%",
                          style: const TextStyle(fontSize: 17)),
                    ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text("Stok ",
                    style: TextStyle(fontSize: 15, color: Colors.blue)),
              ),
              ((widget.item.stock ?? 0) - (pos?.qty ?? 0))
                              .toString()
                              .split('.')[1]
                              .length ==
                          1 &&
                      ((widget.item.stock ?? 0) - (pos?.qty ?? 0))
                              .toString()
                              .split('.')[1] ==
                          '0'
                  ? Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                          ((widget.item.stock ?? 0) - (pos?.qty ?? 0))
                              .toString()
                              .split('.')[0],
                          style: const TextStyle(fontSize: 17)),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                          "${(widget.item.stock ?? 0) - (pos?.qty ?? 0)}",
                          style: const TextStyle(fontSize: 17)),
                    ),
              const SizedBox(
                height: 700.0,
              ),
            ]),
          ),
        ));
  }
}
