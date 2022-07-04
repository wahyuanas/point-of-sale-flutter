import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/vehicle/form/create/cubit/vehicle_form_create_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/model/vehicle_type_model.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosVehicleTypeListCardWidget extends StatefulWidget {
  final VehicleTypeModel vehicleType;
  const PosVehicleTypeListCardWidget({Key? key, required this.vehicleType})
      : super(key: key);

  @override
  State<PosVehicleTypeListCardWidget> createState() =>
      _PosVehicleTypeListCardWidgetState();
}

class _PosVehicleTypeListCardWidgetState
    extends State<PosVehicleTypeListCardWidget> {
  bool? _itsMe;

  @override
  void initState() {
    _itsMe = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PosPaymentCubit, PosPaymentState>(
      listener: (context, state) async {
        state.createOrder?.vehicle.value.fold((l) {
          if (_itsMe == true) {
            _itsMe = false;
            setState(() {});
          }
        }, (r) {
          if (r?.id == widget.vehicleType.id) {
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
                  trailing: GestureDetector(
                    onTap: () {
                      if (_itsMe == false) {
                        BlocProvider.of<VehicleFormCreateCubit>(context)
                            .onCreateVehicleTypeChanged(widget.vehicleType);
                        //Navigator.of(context).pop();
                      } else {
                        BlocProvider.of<PosPaymentCubit>(context)
                            .onVehicleChanged(null);
                      }
                    },
                    child: Icon(
                      Icons.done_outlined,
                      size: 35.0,
                      color: _itsMe == true ? Colors.blue : Colors.black38,
                    ),
                  ),
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.person_outline,
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
                                widget.vehicleType.manufacture.name,
                                style: const TextStyle(
                                    color: Colors.blue, fontSize: 15.0),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                widget.vehicleType.model,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 14.0),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Wrap(
                                children: [
                                  Wrap(
                                    children: [
                                      Text(widget.vehicleType.color,
                                          style: const TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 1.2)),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Text('${widget.vehicleType.year}',
                                          style: const TextStyle(
                                              color: Colors.blue, height: 1.2)),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
