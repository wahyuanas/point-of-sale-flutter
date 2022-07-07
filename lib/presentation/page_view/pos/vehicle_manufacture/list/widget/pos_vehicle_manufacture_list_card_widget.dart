import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/vehicle_manufacture/model/vehicle_manufacture_model.dart';
import 'package:pos/presentation/main/vehicle_type/form/create/cubit/vehicle_type_form_create_cubit.dart';

class PosVehicleManufactureListCardWidget extends StatefulWidget {
  final VehicleManufactureModel vehicleManufacture;
  const PosVehicleManufactureListCardWidget(
      {Key? key, required this.vehicleManufacture})
      : super(key: key);

  @override
  State<PosVehicleManufactureListCardWidget> createState() =>
      _PosVehicleManufactureListCardWidgetState();
}

class _PosVehicleManufactureListCardWidgetState
    extends State<PosVehicleManufactureListCardWidget> {
  bool? _itsMe;

  @override
  void initState() {
    _itsMe = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<VehicleTypeFormCreateCubit>(context)
        .state
        .createVehicleType
        .manufacture
        .value
        .fold((l) => null, (r) {
      if (r?.id == widget.vehicleManufacture.id) {
        //if (_itsMe == false) {
        _itsMe = true;
        //}
      } else {
        _itsMe = false;
      }
    });
    return BlocListener<VehicleTypeFormCreateCubit, VehicleTypeFormCreateState>(
      listener: (context, state) async {
        state.createVehicleType.manufacture.value.fold((l) {
          if (_itsMe == true) {
            _itsMe = false;
            setState(() {});
          }
        }, (r) {
          if (r?.id == widget.vehicleManufacture.id) {
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
                  BlocProvider.of<VehicleTypeFormCreateCubit>(context)
                      .onCreateVehicleTypeManufactureChanged(
                          widget.vehicleManufacture);
                  //Navigator.of(context).pop();
                } else {
                  BlocProvider.of<VehicleTypeFormCreateCubit>(context)
                      .onCreateVehicleTypeManufactureChanged(null);
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
                        BlocProvider.of<VehicleTypeFormCreateCubit>(context)
                            .onCreateVehicleTypeManufactureChanged(
                                widget.vehicleManufacture);
                        //Navigator.of(context).pop();
                      } else {
                        BlocProvider.of<VehicleTypeFormCreateCubit>(context)
                            .onCreateVehicleTypeManufactureChanged(null);
                      }
                    },
                    child: Container(
                      color: Colors.white,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.vehicleManufacture.name,
                              style: const TextStyle(
                                  color: Colors.blue, fontSize: 15.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              widget.vehicleManufacture.name,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14.0),
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
