import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/common/formatter/text_currency.dart';
import 'package:pos/presentation/main/catalog/form/create/cubit/catalog_form_create_cubit.dart';

class PosCatalogFormSellPriceWidget extends StatefulWidget {
  const PosCatalogFormSellPriceWidget({Key? key}) : super(key: key);

  @override
  State<PosCatalogFormSellPriceWidget> createState() =>
      _PosCatalogFormSellPriceWidgetState();
}

class _PosCatalogFormSellPriceWidgetState
    extends State<PosCatalogFormSellPriceWidget> {
  late bool _initial;
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onCompanyNameChanged("");
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(
            child: BlocBuilder<CatalogFormCreateCubit, CatalogFormCreateState>(
                buildWhen: (p, c) {
              if (p.initial != c.initial) {
                if (c.initial == false) {
                  if (_initial == true) _initial = false;
                  return true;
                } else if (c.initial == true) {
                  if (_initial == false) _initial = true;
                  _controller.text = '';
                  return false;
                }
              } else if (p.status != c.status) {
                c.status.maybeWhen(
                    initial: () {
                      if (_initial == false) _initial = true;
                      _controller.text = '';
                    },
                    orElse: () => null);
                return false;
              } else if (p.createCatalogItem.sellPrice !=
                  c.createCatalogItem.sellPrice) {
                if (_initial == true) _initial = false;
                return true;
              }
              return false;
            }, builder: (context, state) {
              return Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                    controller: _controller,
                    inputFormatters: [ThousandsSeparatorInputFormatter()],
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      errorText: _initial == false
                          ? state.createCatalogItem.sellPrice.value.fold(
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
                        Icons.work_outline,
                        color: Colors.blue,
                        size: 26.0, /*Color(0xff224597)*/
                      ),
                      labelText: "Harga Jual",
                      labelStyle: const TextStyle(
                          color: Colors.black54, fontSize: 15.0),
                      hintText: '',
                      //enabledBorder: InputBorder.none,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),

                      //border: InputBorder.none,
                    ),
                    onChanged: (v) =>
                        BlocProvider.of<CatalogFormCreateCubit>(context)
                            .onCreateCatalogItemSellPriceChanged(v)),
              );
            }),
          ),
          Expanded(
            child: BlocBuilder<CatalogFormCreateCubit, CatalogFormCreateState>(
                buildWhen: (p, c) {
              if (p.initial != c.initial) {
                if (c.initial == false) {
                  if (_initial == true) _initial = false;
                  return true;
                } else if (c.initial == true) {
                  if (_initial == false) _initial = true;
                  _controller1.text = '';
                  return false;
                }
              } else if (p.status != c.status) {
                c.status.maybeWhen(
                    initial: () {
                      if (_initial == false) _initial = true;
                      _controller1.text = '';
                    },
                    orElse: () => null);
                return false;
              } else if (p.createCatalogItem.sellDisc !=
                  c.createCatalogItem.sellDisc) {
                if (_initial == true) _initial = false;
                return true;
              }
              return false;
            }, builder: (context, state) {
              return Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                    controller: _controller1,
                    //inputFormatters: [ThousandsSeparatorInputFormatter()],
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      errorText: _initial == false
                          ? state.createCatalogItem.sellDisc.value.fold(
                              (l) => l.maybeWhen(
                                  emptyField: (v) => "*wajib diisi",
                                  notDoubleField: (v) => "*tidak valid",
                                  noSpaceAllowed: (v) =>
                                      "*tidak boleh mengandung spasi",
                                  exceptOneToNineAllowed: (v) =>
                                      "*tidak boleh diawali selain angka 1 - 9",
                                  orElse: () => null),
                              (r) => null)
                          : null,
                      icon: const Icon(
                        Icons.percent_outlined,
                        color: Colors.blue,
                        size: 26.0, /*Color(0xff224597)*/
                      ),
                      labelText: "Discount Harga Jual",
                      labelStyle: const TextStyle(
                          color: Colors.black54, fontSize: 15.0),
                      hintText: '',
                      //enabledBorder: InputBorder.none,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),

                      //border: InputBorder.none,
                    ),
                    onChanged: (v) =>
                        BlocProvider.of<CatalogFormCreateCubit>(context)
                            .onCreateCatalogItemSellDiscChanged(v)),
              );
            }),
          ),
        ],
      ),
    );
  }
}
