import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../cubit/home_inventory_cubit.dart';

class HomeMainInventoryTabWidget extends StatefulWidget {
  const HomeMainInventoryTabWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeMainInventoryTabWidget> createState() =>
      HomeMainInventoryTabWidgetState();
}

class HomeMainInventoryTabWidgetState extends State<HomeMainInventoryTabWidget>
    with AutomaticKeepAliveClientMixin<HomeMainInventoryTabWidget> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<HomeInventoryCubit, HomeInventoryState>(
        builder: (context, state) {
      return state.inventories == null
          ? const Center(
              child: Text(
                "Tidak ada data",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            )
          : ListView.builder(
              //store Page state
              key: const PageStorageKey<String>('Tab1'),
              physics: const ClampingScrollPhysics(),
              itemCount: state.inventories?.length,
              itemBuilder: (BuildContext c, int i) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 20.0, bottom: 20.0),
                    child: GestureDetector(
                      onTap: () async {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.inventory_outlined,
                                color: Colors.blue,
                                size: 50,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${state.inventories?[i].code}",
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    ),
                                    Text(
                                      "${state.inventories?[i].name}",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              Text("${state.inventories?[i].type}",
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                  )),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text("|"),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp',
                                          decimalDigits: 0)
                                      .format(state.inventories?[i].amount),
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                  )),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text("|"),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text("Disc ${state.inventories?[i].disc}",
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                  )),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text("|"),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text("Stok ${state.inventories?[i].stock}",
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                  )),
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
