import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/employee/form/create/cubit/employee_form_create_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/on_state/pos_on_route_state.dart';

class PosEmployeeFormDepartmentWidget extends StatefulWidget {
  const PosEmployeeFormDepartmentWidget({Key? key}) : super(key: key);

  @override
  State<PosEmployeeFormDepartmentWidget> createState() =>
      _PosEmployeeFormDepartmentWidgetState();
}

class _PosEmployeeFormDepartmentWidgetState
    extends State<PosEmployeeFormDepartmentWidget> {
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    context
        .read<EmployeeFormCreateCubit>()
        .state
        .createEmployee
        .department
        .value
        .fold(
            (l) => null,
            (r) => context
                .read<EmployeeFormCreateCubit>()
                .onCreateEmployeeDepartmentChanged(null));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<EmployeeFormCreateCubit, EmployeeFormCreateState>(
          buildWhen: (p, c) {
        debugPrint("POS EMPLOYEE FORM DEPARTMENT");
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
          return true;
        } else if (p.createEmployee.department != c.createEmployee.department) {
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
                        Icons.factory_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Departemen',
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
                  trailing: state.createEmployee.department.value.fold(
                    (l) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<PosRouteCubit>(context).onRoute(
                              const PosOnRouteState.posEmployeeDepartmentList(
                                  r: '/posEmployeeDepartmentList'),
                              null);
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                        child: const Icon(
                          Icons.search_outlined,
                          size: 25.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    (r) => GestureDetector(
                      onTap: () =>
                          BlocProvider.of<EmployeeFormCreateCubit>(context)
                              .onCreateEmployeeDepartmentChanged(null),
                      child: const Icon(
                        Icons.delete_outlined,
                        size: 25.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  title: state.createEmployee.department.value.fold(
                    (l) => const Text(
                      'Pilih Departemen...',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                    (r) => Wrap(
                      children: [
                        Text(
                          r!.name,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
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
                      ? state.createEmployee.department.value.fold(
                          (l) => l.maybeWhen(
                                emptyField: (f) => Colors.red,
                                orElse: () => Colors.red,
                              ),
                          (r) => Colors.blue)
                      : Colors.blue,
                  width: 1,
                ))))),
            _initial == false
                ? state.createEmployee.department.value.fold(
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
