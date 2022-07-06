import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/on_state/pos_on_route_state.dart';

import '../cubit/pos_payment_cubit.dart';

class PosPaymentVehicleWidget extends StatefulWidget {
  const PosPaymentVehicleWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentVehicleWidget> createState() =>
      _PosPaymentVehicleWidgetState();
}

class _PosPaymentVehicleWidgetState extends State<PosPaymentVehicleWidget> {
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    context.read<PosPaymentCubit>().state.createOrder.vehicle.value.fold(
        (l) => null,
        (r) => context.read<PosPaymentCubit>().onVehicleChanged(null));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosPaymentCubit, PosPaymentState>(buildWhen: (p, c) {
      if (p.initial != c.initial) {
        if (c.initial == false) {
          if (_initial == true) _initial = false;
          return true;
        } else if (c.initial == true) {
          if (_initial == false) _initial = true;
          return false;
        }
      } else if (p.status != c.status) {
        c.status.maybeWhen(
            initial: () {
              if (_initial == false) _initial = true;
            },
            orElse: () => null);
        return false;
      } else if (p.createOrder.vehicle != c.createOrder.vehicle) {
        if (_initial == true) _initial = false;
        return true;
      }
      return false;
    }, builder: (context, state) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30.0,
            child: ListTile(
              // trailing: Icon(
              //   Icons.expand_more_outlined,
              //   size: 30.0,
              //   color: Colors.blue,
              // ),
              title: Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Text(
                  'Kendaraan',
                  style: TextStyle(color: Colors.blue, fontSize: 15.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              //height: 50,
              //margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  //color: Colors.blue,
                  border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 0.5,
                ),
              )),
              child: ListTile(
                  trailing: state.createOrder.vehicle.value.fold(
                    (l) => GestureDetector(
                      onTap: () => BlocProvider.of<PosRouteCubit>(context)
                          .onRoute(
                              const PosOnRouteState.posVehicleList(
                                  r: '/posVehicleList'),
                              null),
                      child: const Icon(
                        Icons.search_outlined,
                        size: 25.0,
                        color: Colors.blue,
                      ),
                    ),
                    (r) => GestureDetector(
                      onTap: () => BlocProvider.of<PosPaymentCubit>(context)
                          .onVehicleChanged(null),
                      child: const Icon(
                        Icons.delete_outlined,
                        size: 25.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  title: state.createOrder.vehicle.value.fold(
                    (l) => const Text(
                      'pilih kendaraan...',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                    (r) => Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            r!.policyNumber,
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 15.0),
                          ),
                          // Text(
                          //   '${r.vehicleOwnerModel?.name}',
                          //   style: const TextStyle(
                          //       color: Colors.black, fontSize: 15.0),
                          // ),
                          Wrap(
                            children: [
                              Text(
                                '${r.vehicleTypeModel?.manufacture?.name}',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 15.0),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(r.vehicleTypeModel!.model,
                                  style: const TextStyle(height: 1.2)),
                            ],
                          ),
                          Wrap(
                            children: [
                              Wrap(
                                children: [
                                  const Text('Warna',
                                      style: TextStyle(height: 1.2)),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(r.vehicleTypeModel!.color,
                                      style: const TextStyle(
                                          color: Colors.blue, height: 1.2)),
                                ],
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Wrap(
                                children: [
                                  const Text('Tahun',
                                      style: TextStyle(height: 1.2)),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text('${r.vehicleTypeModel!.year}',
                                      style: const TextStyle(
                                          color: Colors.blue, height: 1.2)),
                                ],
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              const Text('Kilometer',
                                  style: TextStyle(height: 1.2)),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text('${r.currentKm}',
                                  style: const TextStyle(
                                      color: Colors.blue, height: 1.2)),
                            ],
                          ),
                        ]),
                  )),
            ),
          ),
          _initial == false
              ? state.createOrder.vehicle.value.fold(
                  (l) => l.maybeWhen(
                      emptyField: (f) => const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              '*wajib dipilih',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.red,
                              ),
                            ),
                          ),
                      orElse: () => Container()),
                  (r) => Container())
              : Container()
        ],
      );
    });
  }
}
