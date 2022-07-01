import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/customer/entity/customer.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

class PosCustomerListCardWidget extends StatefulWidget {
  final Customer customer;
  const PosCustomerListCardWidget({Key? key, required this.customer})
      : super(key: key);

  @override
  State<PosCustomerListCardWidget> createState() =>
      _PosCustomerListCardWidgetState();
}

class _PosCustomerListCardWidgetState extends State<PosCustomerListCardWidget> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
                // BlocProvider.of<RouteCubit>(context).onRoute(
                //     const OnRouteState.posCatalogItemDetail(
                //         r: '/posCatalogItemDetail'),
                //     widget.pos.item);
              },
              child: ListTile(
                title: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 40,
                    ),
                    Container(),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.customer.code,
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 15.0),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            widget.customer.name,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14.0),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            widget.customer.name,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
