import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../cubit/home_order_cubit.dart';

class HomeMainOrderTabWidget extends StatefulWidget {
  const HomeMainOrderTabWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeMainOrderTabWidget> createState() => _HomeMainOrderTabWidgetState();
}

class _HomeMainOrderTabWidgetState extends State<HomeMainOrderTabWidget>
    with AutomaticKeepAliveClientMixin<HomeMainOrderTabWidget> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<HomeOrderCubit, HomeOrderState>(
        builder: (context, state) {
      return state.orders == null
          ? const Center(
              child: Text(
                "Tidak ada data",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            )
          : ListView.builder(
              //store Page state
              key: const PageStorageKey<String>('HomeMainOrderTabWidget'),
              physics: const ClampingScrollPhysics(),
              itemCount: state.orders?.length,
              itemBuilder: (BuildContext c, int i) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 20.0, bottom: 20.0),
                    child: GestureDetector(
                      onTap: () async {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //mainAxisSize: MainAxisSize.min,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.description_outlined,
                                size: 50.0,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Wrap(
                                      children: [
                                        Text(
                                          "Mr. ${state.orders?[i].code}",
                                          style: const TextStyle(
                                              color: Colors.blue, fontSize: 15),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "${state.orders?[i].code}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("${state.orders?[i].code}",
                                            style: const TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                            )),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        const Text("|"),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text("${state.orders?[i].date}",
                                            style: const TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                NumberFormat.currency(
                                        locale: 'id',
                                        symbol: 'Rp',
                                        decimalDigits: 0)
                                    .format(state.orders?[i].amount),
                                style: const TextStyle(fontSize: 17.0),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.blue,
                                      //size: 30.0,
                                    ),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                          fontSize: 13.0, color: Colors.blue),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
    });
  }

  @override
  bool get wantKeepAlive => true;
}
