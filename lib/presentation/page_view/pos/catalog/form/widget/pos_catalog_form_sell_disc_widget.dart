import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/catalog/form/create/cubit/catalog_form_create_cubit.dart';

class PosCatalogFormSellDiscWidget extends StatefulWidget {
  const PosCatalogFormSellDiscWidget({Key? key}) : super(key: key);

  @override
  State<PosCatalogFormSellDiscWidget> createState() =>
      _PosCatalogFormSellDiscWidgetState();
}

class _PosCatalogFormSellDiscWidgetState
    extends State<PosCatalogFormSellDiscWidget> {
  late bool _initial;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onCompanyNameChanged("");
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
              controller: _controller,
              //inputFormatters: [ThousandsSeparatorInputFormatter()],
              autofocus: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.createCatalogItem.sellDisc.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            notDoubleField: (v) => "*tidak valid",
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
                labelText: "Discount Harga Jual",
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
                  .onCreateCatalogItemSellDiscChanged(v)),
        );
      }),
    );
  }
}
