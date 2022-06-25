import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              inputFormatters: [ThousandsSeparatorInputFormatter()],
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

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  static const separator = '.'; // Change this to '.' for other locales

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Short-circuit if the new value is empty
    if (newValue.text.length == 0) {
      return newValue.copyWith(text: '');
    }

    // Handle "deletion" of separator character
    String oldValueText = oldValue.text.replaceAll(separator, '');
    String newValueText = newValue.text.replaceAll(separator, '');

    if (oldValue.text.endsWith(separator) &&
        oldValue.text.length == newValue.text.length + 1) {
      newValueText = newValueText.substring(0, newValueText.length - 1);
    }

    // Only process if the old value and new value are different
    if (oldValueText != newValueText) {
      int selectionIndex =
          newValue.text.length - newValue.selection.extentOffset;
      final chars = newValueText.split('');

      String newString = '';
      for (int i = chars.length - 1; i >= 0; i--) {
        if ((chars.length - 1 - i) % 3 == 0 && i != chars.length - 1)
          newString = separator + newString;
        newString = chars[i] + newString;
      }

      return TextEditingValue(
        text: newString.toString(),
        selection: TextSelection.collapsed(
          offset: newString.length - selectionIndex,
        ),
      );
    }

    // If the new value and old value are the same, just return as-is
    return newValue;
  }
}
