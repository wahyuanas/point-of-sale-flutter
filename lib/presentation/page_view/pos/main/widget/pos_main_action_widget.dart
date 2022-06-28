import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

import '../bloc/pos_main_bloc.dart';

class PosMainActionWidget extends StatefulWidget {
  const PosMainActionWidget({Key? key}) : super(key: key);

  @override
  State<PosMainActionWidget> createState() => _PosMainActionWidgetState();
}

class _PosMainActionWidgetState extends State<PosMainActionWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosMainBloc, PosMainState>(builder: (context, state) {
      return Container(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border(
              bottom: BorderSide(
            color: Colors.blue,
            //width: 3.0,
          )),
        ),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => BlocProvider.of<RouteCubit>(context).onRoute(
                    const OnRouteState.postCatalogList(r: '/postCatalogList'),
                    null),
                child: Card(
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.blue, width: 0.5),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: SizedBox(
                    height: 60,
                    width: 80,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.blue,
                        ),
                        Text(
                          "Tambah",
                          style: TextStyle(
                              fontSize: 13,
                              //fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  state.poss != null
                      ? GestureDetector(
                          onTap: () => _showMyDialog(context),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.blue, width: 0.5),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                alignment: Alignment.center,
                                height: 60,
                                width: 80,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Batal",
                                      style: TextStyle(
                                          fontSize: 13,
                                          //fontWeight: FontWeight.w500,
                                          color: Colors.blue),
                                    )
                                  ],
                                ),
                              )),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      10.0) //                 <--- border radius here
                                  ),
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 167, 153, 153))),
                          alignment: Alignment.center,
                          height: 60,
                          width: 80,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.cancel_outlined,
                                color: Color.fromARGB(255, 167, 153, 153),
                              ),
                              Text("Batal",
                                  style: TextStyle(
                                      fontSize: 13,
                                      //fontWeight: FontWeight.w500,
                                      color:
                                          Color.fromARGB(255, 167, 153, 153)))
                            ],
                          ),
                        ),
                  state.poss == null
                      ? const SizedBox(
                          width: 7.0,
                        )
                      : Container(),
                  state.poss != null
                      ? GestureDetector(
                          onTap: () => BlocProvider.of<RouteCubit>(context)
                              .onRoute(
                                  const OnRouteState.postCatalogList(
                                      r: '/purchase'),
                                  null),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.blue, width: 0.5),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                alignment: Alignment.center,
                                height: 60,
                                width: 80,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.near_me_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Bayar",
                                      style: TextStyle(
                                          fontSize: 13,
                                          //fontWeight: FontWeight.w500,
                                          color: Colors.blue),
                                    )
                                  ],
                                ),
                              )),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      10.0) //                 <--- border radius here
                                  ),
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 167, 153, 153))),
                          alignment: Alignment.center,
                          height: 60,
                          width: 80,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.near_me_outlined,
                                  color: Color.fromARGB(255, 167, 153, 153)),
                              Text(
                                "Bayar",
                                style: TextStyle(
                                    fontSize: 13,
                                    //fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 167, 153, 153)),
                              )
                            ],
                          ),
                        ),
                  state.poss == null
                      ? const SizedBox(
                          width: 5.0,
                        )
                      : Container(),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Pemberitahuan',
          style: TextStyle(fontSize: 20),
        ),
        content: const Text('Yakin Ingin Membatalkan Transaksi ?'),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        actions: <Widget>[
          TextButton(
            child: const Text('Tidak', style: TextStyle(fontSize: 17)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Ya', style: TextStyle(fontSize: 17)),
            onPressed: () {
              BlocProvider.of<PosMainBloc>(context)
                  .add(const PosStartedEvent());
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
