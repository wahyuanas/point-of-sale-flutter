import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/common/formatter/text_currency.dart';
import 'package:pos/presentation/main/catalog/form/create/cubit/catalog_form_create_cubit.dart';

class PosCatalogFormPurchaseDiscWidget extends StatefulWidget {
  const PosCatalogFormPurchaseDiscWidget({Key? key}) : super(key: key);

  @override
  State<PosCatalogFormPurchaseDiscWidget> createState() =>
      _PosCatalogFormPurchaseDiscWidgetState();
}

class _PosCatalogFormPurchaseDiscWidgetState
    extends State<PosCatalogFormPurchaseDiscWidget> {
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onCompanyNameChanged("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<CatalogFormCreateCubit, CatalogFormCreateState>(
          buildWhen: (p, c) {
        _initial = false;
        return p.createCatalogItem.purchaseDisc !=
                c.createCatalogItem.purchaseDisc ||
            p.failOrUnit != c.failOrUnit;
      }, builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
              //inputFormatters: [ThousandsSeparatorInputFormatter()],
              autofocus: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.createCatalogItem.purchaseDisc.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            notIntField: (v) => "*wajib berupa angka",
                            noSpaceAllowed: (v) =>
                                "*tidak boleh mengandung spasi",
                            exceptOneToNineAllowed: (v) =>
                                "*tidak boleh diawali selain angka 1 - 9",
                            orElse: () => null),
                        (r) => null)
                    : null,
                icon: const Icon(
                  Icons.comment,
                  color: Colors.blue,
                  size: 26.0, /*Color(0xff224597)*/
                ),
                labelText: "Discount Harga Beli",
                labelStyle:
                    const TextStyle(color: Colors.black54, fontSize: 15.0),
                hintText: '',
                //enabledBorder: InputBorder.none,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),

                //border: InputBorder.none,
              ),
              onChanged: (v) => BlocProvider.of<CatalogFormCreateCubit>(context)
                  .onCreateCatalogItemPurchaseDiscChanged(v == '' ? null : v)),
        );
      }),
    );
  }
}
