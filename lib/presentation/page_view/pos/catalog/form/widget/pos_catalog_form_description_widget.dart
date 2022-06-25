import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/catalog/form/create/cubit/catalog_form_create_cubit.dart';

class PosCatalogFormDescriptionWidget extends StatefulWidget {
  const PosCatalogFormDescriptionWidget({Key? key}) : super(key: key);

  @override
  State<PosCatalogFormDescriptionWidget> createState() =>
      _PosCatalogFormDescriptionWidgetState();
}

class _PosCatalogFormDescriptionWidgetState
    extends State<PosCatalogFormDescriptionWidget> {
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
        return p.createCatalogItem.description !=
                c.createCatalogItem.description ||
            p.failOrUnit != c.failOrUnit;
      }, builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
              maxLines: 2,
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.createCatalogItem.description.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            orElse: () => null),
                        (r) => null)
                    : null,
                icon: const Icon(
                  Icons.comment,
                  color: Colors.blue,
                  size: 26.0, /*Color(0xff224597)*/
                ),
                labelText: "Keterangan",
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
                  .onCreateCatalogItemDescriptionChanged(v)),
        );
      }),
    );
  }
}
