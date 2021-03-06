import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/vehicle/model/vehicle_model.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosVehicleListCardWidget extends StatefulWidget {
  final VehicleModel vehicle;
  const PosVehicleListCardWidget({Key? key, required this.vehicle})
      : super(key: key);

  @override
  State<PosVehicleListCardWidget> createState() =>
      _PosVehicleListCardWidgetState();
}

class _PosVehicleListCardWidgetState extends State<PosVehicleListCardWidget> {
  bool? _itsMe;

  @override
  void initState() {
    _itsMe = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PosPaymentCubit>(context)
        .state
        .createOrder
        .vehicle
        .value
        .fold((l) => null, (r) {
      if (r?.id == widget.vehicle.id) {
        //if (_itsMe == false) {
        _itsMe = true;
        //}
      } else {
        _itsMe = false;
      }
    });
    return BlocListener<PosPaymentCubit, PosPaymentState>(
      listener: (context, state) async {
        state.createOrder.vehicle.value.fold((l) {
          if (_itsMe == true) {
            _itsMe = false;
            setState(() {});
          }
        }, (r) {
          if (r?.id == widget.vehicle.id) {
            if (_itsMe == false) {
              _itsMe = true;
            } else if (_itsMe == true) {
              _itsMe = false;
            }
            setState(() {});
          } else {
            if (_itsMe == true) {
              _itsMe = false;
              setState(() {});
            }
          }
        });
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
          child: ListTile(
            trailing: GestureDetector(
              onTap: () {
                if (_itsMe == false) {
                  BlocProvider.of<PosPaymentCubit>(context)
                      .onVehicleChanged(widget.vehicle);
                  //Navigator.of(context).pop();
                } else {
                  BlocProvider.of<PosPaymentCubit>(context)
                      .onVehicleChanged(null);
                }
              },
              child: _itsMe == true
                  ? const Icon(
                      Icons.done_outlined,
                      size: 35.0,
                      color: Colors.blue,
                    )
                  : const Icon(
                      Icons.radio_button_checked_outlined,
                      size: 20.0,
                      color: Colors.black38,
                    ),
            ),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.directions_car_outlined,
                  size: 50,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (_itsMe == false) {
                        BlocProvider.of<PosPaymentCubit>(context)
                            .onVehicleChanged(widget.vehicle);
                        //Navigator.of(context).pop();
                      } else {
                        BlocProvider.of<PosPaymentCubit>(context)
                            .onVehicleChanged(null);
                      }
                    },
                    child: Container(
                      color: Colors.white,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.vehicle.policyNumber,
                              style: const TextStyle(
                                  color: Colors.blue, fontSize: 15.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '${widget.vehicle.vehicleOwner?.name}',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                            Wrap(
                              children: [
                                Text(
                                  '${widget.vehicle.vehicleType?.manufacture?.name}',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 15.0),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(widget.vehicle.vehicleType!.model,
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
                                    Text(widget.vehicle.vehicleType!.color,
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
                                    Text('${widget.vehicle.vehicleType!.year}',
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
                                Text('${widget.vehicle.currentKm}',
                                    style: const TextStyle(
                                        color: Colors.blue, height: 1.2)),
                              ],
                            ),
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
