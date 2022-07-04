import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/vehicle/form/create/cubit/vehicle_form_create_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/on_state/pos_on_route_state.dart';

class PosVehicleFormVehicleOwnerWidget extends StatefulWidget {
  const PosVehicleFormVehicleOwnerWidget({Key? key}) : super(key: key);

  @override
  State<PosVehicleFormVehicleOwnerWidget> createState() =>
      _PosVehicleFormVehicleOwnerWidgetState();
}

class _PosVehicleFormVehicleOwnerWidgetState
    extends State<PosVehicleFormVehicleOwnerWidget> {
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onCompanyNameChanged("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<VehicleFormCreateCubit, VehicleFormCreateState>(
          buildWhen: (p, c) {
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
        } else if (p.createVehicle.vehicleOwner !=
            c.createVehicle.vehicleOwner) {
          if (_initial == true) _initial = false;
          return true;
        }
        return false;
      }, builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.0,
              child: ListTile(
                // trailing: Icon(
                //   Icons.expand_more_outlined,
                //   size: 30.0,
                //   color: Colors.blue,
                // ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.person_outline,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Owner',
                        style: TextStyle(color: Colors.blue, fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 15.0),
              child: ListTile(
                  // leading: const Icon(
                  //   Icons.person_outline,
                  //   color: Colors.blue,
                  // ),
                  trailing: state.createVehicle.vehicleOwner.value.fold(
                    (l) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: () => BlocProvider.of<PosRouteCubit>(context)
                            .onRoute(
                                const PosOnRouteState.posCustomerList(
                                    r: '/posVehicleOwnerList'),
                                null),
                        child: const Icon(
                          Icons.search_outlined,
                          size: 25.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    (r) => GestureDetector(
                      onTap: () =>
                          BlocProvider.of<VehicleFormCreateCubit>(context)
                              .onCreateVehicleOwnerChanged(null),
                      child: const Icon(
                        Icons.delete_outlined,
                        size: 25.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  title: state.createVehicle.vehicleOwner.value.fold(
                    (l) => const Text(
                      'Pilih Owner...',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                    (r) => Text(
                      r!.name,
                      style: const TextStyle(fontSize: 15),
                    ),
                  )),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 55, right: 15.0),
                child: Container(
                    //height: 50,
                    //margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        //color: Colors.blue,
                        border: Border(
                            top: BorderSide(
                  color: _initial == false
                      ? state.createVehicle.vehicleOwner.value.fold(
                          (l) => l.maybeWhen(
                                emptyField: (f) => Colors.red,
                                orElse: () => Colors.red,
                              ),
                          (r) => Colors.blue)
                      : Colors.blue,
                  width: 1,
                ))))),
            _initial == false
                ? state.createVehicle.vehicleOwner.value.fold(
                    (l) => l.maybeWhen(
                        emptyField: (f) => const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 60),
                              child: Text(
                                '*wajib dipilih',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                        orElse: () => Container()),
                    (r) => Container())
                : Container()
          ],
        );
      }),
    );
  }
}
