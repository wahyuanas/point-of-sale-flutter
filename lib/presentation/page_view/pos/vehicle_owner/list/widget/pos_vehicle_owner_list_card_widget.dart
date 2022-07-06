import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/vehicle/form/create/cubit/vehicle_form_create_cubit.dart';
import 'package:pos/presentation/main/vehicle_owner/model/vehicle_owner_model.dart';

class PosVehicleOwnerListCardWidget extends StatefulWidget {
  final VehicleOwnerModel vehicleOwner;
  const PosVehicleOwnerListCardWidget({Key? key, required this.vehicleOwner})
      : super(key: key);

  @override
  State<PosVehicleOwnerListCardWidget> createState() =>
      _PosVehicleOwnerListCardWidgetState();
}

class _PosVehicleOwnerListCardWidgetState
    extends State<PosVehicleOwnerListCardWidget> {
  bool? _itsMe;

  @override
  void initState() {
    _itsMe = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<VehicleFormCreateCubit>(context)
        .state
        .createVehicle
        .vehicleOwner
        .value
        .fold((l) => null, (r) {
      if (r?.id == widget.vehicleOwner.id) {
        //if (_itsMe == false) {
        _itsMe = true;
        // }
      } else {
        _itsMe = false;
      }
    });
    return BlocListener<VehicleFormCreateCubit, VehicleFormCreateState>(
      listener: (context, state) async {
        state.createVehicle.vehicleOwner.value.fold((l) {
          if (_itsMe == true) {
            _itsMe = false;
            setState(() {});
          }
        }, (r) {
          if (r?.id == widget.vehicleOwner.id) {
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
                  BlocProvider.of<VehicleFormCreateCubit>(context)
                      .onCreateVehicleOwnerChanged(widget.vehicleOwner);
                  //Navigator.of(context).pop();
                } else {
                  BlocProvider.of<VehicleFormCreateCubit>(context)
                      .onCreateVehicleOwnerChanged(null);
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
                          widget.vehicleOwner.name,
                          style: const TextStyle(
                              color: Colors.blue, fontSize: 15.0),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          widget.vehicleOwner.idNumber,
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
                                Text(widget.vehicleOwner.phoneNumber,
                                    style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        height: 1.2)),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(widget.vehicleOwner.email,
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
      ),
    );
  }
}
