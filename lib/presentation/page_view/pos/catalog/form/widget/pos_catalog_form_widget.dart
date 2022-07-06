import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/main/catalog/form/create/cubit/catalog_form_create_cubit.dart';
import 'package:pos/presentation/main/modal/cubit/modal_cubit.dart';

import 'pos_catalog_form_export_widget.dart';

class PosCatalogFormWidget extends StatefulWidget {
  const PosCatalogFormWidget({Key? key}) : super(key: key);

  @override
  State<PosCatalogFormWidget> createState() => _PosCatalogFormWidgetState();
}

class _PosCatalogFormWidgetState extends State<PosCatalogFormWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CatalogFormCreateCubit, CatalogFormCreateState>(
      listener: (context, state) {
        state.status.when(
            initial: (() => null),
            loading: () {
              BlocProvider.of<ModalCubit>(context)
                  .onModalPush("Sedang Proses...");
            },
            success: (r) async {
              if (!mounted) return;
              BlocProvider.of<ModalCubit>(context)
                  .onModalContent("Berhasil Create Data");
              await Future.delayed(const Duration(milliseconds: 1000));
              if (!mounted) return;
              BlocProvider.of<ModalCubit>(context).onModalPop();
              BlocProvider.of<CatalogFormCreateCubit>(context).onInitial();
            },
            failure: (f) {
              BlocProvider.of<ModalCubit>(context)
                  .onModalFailure(FailureExceptions.getErrorMessage(f));
            });
      },
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          //centerTitle: true,
          elevation: 0.3,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.blue,
              size: 30.0,
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
          // leading: GestureDetector(
          //   child: const Padding(
          //     padding: EdgeInsets.only(right: 20.0),
          //     child: Icon(
          //       Icons.add_circle_outline,
          //       size: 35,
          //       color: Colors.blue,
          //     ),
          //   ),
          //   onTap: () => const PosCatalogFormWidget(),
          // ),
          title: const Text(
            "Form Tambah Item",
            style: TextStyle(color: Colors.blue, fontSize: 17.0),
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.blue, // navigation bar color
            statusBarColor: Colors.white, // status bar color
            statusBarBrightness: Brightness.dark, //status bar brigtness
            statusBarIconBrightness:
                Brightness.dark, //status barIcon Brightness
            systemNavigationBarDividerColor:
                Colors.greenAccent, //Navigation bar divider color
            systemNavigationBarIconBrightness:
                Brightness.light, //navigation bar icon
          ),
          // actions: [
          //   // GestureDetector(
          //   //   child: const Padding(
          //   //     padding: EdgeInsets.only(right: 20.0),
          //   //     child: Icon(
          //   //       Icons.done_outlined,
          //   //       size: 35,
          //   //       color: Colors.blue,
          //   //     ),
          //   //   ),
          //   //   onTap: () => Navigator.of(context).pop(),
          //   // ),
          // ],
        ),
        body: CustomScrollView(slivers: [
          const PosCatalogFormCodeWidget(),
          const PosCatalogFormBarcodeWidget(),
          const PosCatalogFormNameWidget(),
          const PosCatalogFormDescriptionWidget(),
          const PosCatalogFormSellPriceWidget(),
          //PosCatalogFormSellDiscWidget(),
          const PosCatalogFormPurchasePriceWidget(),
          //PosCatalogFormPurchaseDiscWidget(),
          const PosCatalogFormStockWidget(),
          const PosCatalogFormCategoryWidget(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20.0,
            ),
          ),
          const PosCatalogFormImageWidget(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30.0,
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //color: Colors.blue[300],
              margin: const EdgeInsets.symmetric(vertical: 1),
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.95,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.95, 31),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: const Color.fromARGB(255, 148, 187, 231),
                    //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    //textStyle:
                    //  TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                  ),
                  onPressed: () async {
                    context.read<CatalogFormCreateCubit>().onCreate();
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                  child: const Text(
                    "S i m p a n",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
            ),
          )),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50.0,
            ),
          ),
        ]),
      ),
    );
  }
}
