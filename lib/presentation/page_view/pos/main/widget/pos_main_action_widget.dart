import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/common/cubit/intro/intro_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/on_state/pos_on_route_state.dart';
import 'package:showcaseview/showcaseview.dart';

import '../bloc/pos_main_bloc.dart';

class PosMainActionWidget extends StatefulWidget {
  const PosMainActionWidget({Key? key}) : super(key: key);

  @override
  State<PosMainActionWidget> createState() => _PosMainActionWidgetState();
}

class _PosMainActionWidgetState extends State<PosMainActionWidget> {
  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();
  final GlobalKey _three = GlobalKey();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.read<IntroCubit>().state.posMain == false) {
        ModalRoute.of(context)
            ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: () {
          ShowCaseWidget.of(context).dismiss();
        }));
        ShowCaseWidget.of(context).startShowCase([_one, _two, _three]);
        context.read<IntroCubit>().onPosMainChanged(true);
      }
    });
    super.initState();
  }

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
              Showcase(
                description:
                    "Tekan Tombol Tambah Untuk Menambah Item Transaksi",
                key: _one,
                //shapeBorder: const CircleBorder(),
                // container: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Container(
                //         color: const Color.fromARGB(255, 255, 255, 255),
                //         child: const Text(
                //             "Tekan Tombol Tambah Untuk Menambah Item Transaksi")),
                //     const SizedBox(
                //       height: 10.0,
                //     ),
                //     GestureDetector(
                //         onTap: () {
                //           ShowCaseWidget.of(context).next();
                //         },
                //         child: Container(
                //             color: const Color.fromARGB(255, 255, 255, 255),
                //             child: const Text("next")))
                //   ],
                // ),
                // height: 40,
                // width: 40,
                child: GestureDetector(
                  onTap: () {
                    //Intro.of(context).dispose();
                    BlocProvider.of<PosRouteCubit>(context).onRoute(
                        const PosOnRouteState.posCatalogList(
                            r: '/posCatalogList'),
                        null);
                  },
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
                      : Showcase(
                          key: _two,
                          description:
                              "Tekan Tombol Tambah Untuk Membatalkan Transaksi",
                          //shapeBorder: const CircleBorder(),
                          // container: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Container(
                          //         color:
                          //             const Color.fromARGB(255, 255, 255, 255),
                          //         child: const Text(
                          //             "Tekan Tombol Tambah Untuk Membatalkan Transaksi")),
                          //     const SizedBox(
                          //       height: 10.0,
                          //     ),
                          //     GestureDetector(
                          //         onTap: () {
                          //           ShowCaseWidget.of(context).next();
                          //         },
                          //         child: Container(
                          //             color: const Color.fromARGB(
                          //                 255, 255, 255, 255),
                          //             child: const Text("next")))
                          //   ],
                          // ),
                          // height: 40,
                          // width: 40,

                          child: Container(
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
                        ),
                  state.poss == null
                      ? const SizedBox(
                          width: 7.0,
                        )
                      : Container(),
                  state.poss != null
                      ? GestureDetector(
                          onTap: () => BlocProvider.of<PosRouteCubit>(context)
                              .onRoute(
                                  const PosOnRouteState.purchase(
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
                      : Showcase(
                          key: _three,
                          description:
                              "Tekan Tombol Tambah Untuk Melakukan Pembayaran",
                          //shapeBorder: const CircleBorder(),
                          // container: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Container(
                          //         color:
                          //             const Color.fromARGB(255, 255, 255, 255),
                          //         child: const Text(
                          //             "Tekan Tombol Tambah Untuk Melakukan Pembayaran")),
                          //     const SizedBox(
                          //       height: 10.0,
                          //     ),
                          //     GestureDetector(
                          //         onTap: () {
                          //           ShowCaseWidget.of(context).next();
                          //         },
                          //         child: Container(
                          //             color: const Color.fromARGB(
                          //                 255, 255, 255, 255),
                          //             child: const Text("ok")))
                          //   ],
                          // ),
                          // height: 40,
                          // width: 40,

                          child: Container(
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
                                      color:
                                          Color.fromARGB(255, 167, 153, 153)),
                                )
                              ],
                            ),
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
