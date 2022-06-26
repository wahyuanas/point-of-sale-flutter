import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';
import 'package:pos/presentation/utils/colors.dart';

class PosCatalogListCardButtonWidget extends StatefulWidget {
  final Item item;
  const PosCatalogListCardButtonWidget({Key? key, required this.item})
      : super(key: key);

  @override
  State<PosCatalogListCardButtonWidget> createState() =>
      _PosCatalogListCardButtonWidgetState();
}

class _PosCatalogListCardButtonWidgetState
    extends State<PosCatalogListCardButtonWidget> {
  Pos? pos;

  @override
  void initState() {
    // int? index = BlocProvider.of<PosMainBloc>(context)
    //     .state
    //     .poss
    //     ?.indexWhere((posc) => posc.item.id == widget.item.id);
    // if (index != null) {
    //   if (index >= 0) {
    //     pos = BlocProvider.of<PosMainBloc>(context).state.poss![index];
    //   }
    // }
    super.initState();
  }

  Pos? getPos() {
    int? index = BlocProvider.of<PosMainBloc>(context)
        .state
        .poss
        ?.indexWhere((posc) => posc.item.id == widget.item.id);
    if (index != null) {
      if (index >= 0) {
        pos = BlocProvider.of<PosMainBloc>(context).state.poss![index];
      }
    }
    return pos;
  }

  @override
  Widget build(BuildContext context) {
    pos = getPos();
    if (pos?.item.id != widget.item.id) {
      pos = null;
    }
    return BlocListener<PosMainBloc, PosMainState>(
      listener: (context, state) async {
        if (state.idItem == widget.item.id) {
          pos = null;
          int? index = state.poss?.indexWhere((posc) {
            return posc.item.id == widget.item.id;
          });
          if (index != null) {
            if (index >= 0) {
              pos = state.poss![index];
            }
          }
          setState(() {});
        }
      },
      child: pos?.qty == null
          ? Align(
              child: GestureDetector(
                onTap: () => BlocProvider.of<PosMainBloc>(context)
                    .add(PosAddItemEvent(item: widget.item)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Card(
                    color: const Color.fromARGB(255, 148, 187, 231),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.blue, width: 0.5),
                        borderRadius: BorderRadius.circular(50.0)),
                    child: const SizedBox(
                      height: 29,
                      child: Center(
                        child: Text(
                          "Tambah",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => BlocProvider.of<PosMainBloc>(context)
                      .add(PosDecrementItemEvent(item: widget.item)),
                  child: const Icon(
                    Icons.remove_circle_outline,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text("${pos?.qty}",
                    style: const TextStyle(color: Colors.blue, fontSize: 17.0)),
                const SizedBox(
                  width: 10.0,
                ),
                (widget.item.stock ?? 0) - (pos?.qty ?? 0) == 0
                    ? const Icon(
                        Icons.add_circle_outline,
                        color: Color.fromARGB(255, 167, 153, 153),
                        size: 30,
                      )
                    : GestureDetector(
                        onTap: () => BlocProvider.of<PosMainBloc>(context)
                            .add(PosIncrementItemEvent(item: widget.item)),
                        child: const Icon(
                          Icons.add_circle_outline,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
              ],
            ),
    );
  }
}
