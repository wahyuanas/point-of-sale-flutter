import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/employee/form/create/cubit/employee_form_create_cubit.dart';
import 'package:pos/presentation/main/employee_department/model/employees_department_model.dart';

class PosEmployeeDepartmentListCardWidget extends StatefulWidget {
  final EmployeesDepartmentModel employeeDepartment;
  const PosEmployeeDepartmentListCardWidget(
      {Key? key, required this.employeeDepartment})
      : super(key: key);

  @override
  State<PosEmployeeDepartmentListCardWidget> createState() =>
      _PosEmployeeDepartmentListCardWidgetState();
}

class _PosEmployeeDepartmentListCardWidgetState
    extends State<PosEmployeeDepartmentListCardWidget> {
  bool? _itsMe;

  @override
  void initState() {
    _itsMe = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<EmployeeFormCreateCubit>(context)
        .state
        .createEmployee
        .department
        .value
        .fold((l) => null, (r) {
      if (r?.id == widget.employeeDepartment.id) {
        //if (_itsMe == false) {
        _itsMe = true;
        //}
      } else {
        _itsMe = false;
      }
    });
    return BlocListener<EmployeeFormCreateCubit, EmployeeFormCreateState>(
      listener: (context, state) async {
        state.createEmployee.department.value.fold((l) {
          if (_itsMe == true) {
            _itsMe = false;
            setState(() {});
          }
        }, (r) {
          if (r?.id == widget.employeeDepartment.id) {
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
                      debugPrint("POS EMPLOYEE DEPARTMENT LIST CARD $_itsMe");
                      if (_itsMe == false) {
                        BlocProvider.of<EmployeeFormCreateCubit>(context)
                            .onCreateEmployeeDepartmentChanged(
                                widget.employeeDepartment);
                        //Navigator.of(context).pop();
                      } else {
                        BlocProvider.of<EmployeeFormCreateCubit>(context)
                            .onCreateEmployeeDepartmentChanged(null);
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
                                widget.employeeDepartment.code,
                                style: const TextStyle(
                                    color: Colors.blue, fontSize: 15.0),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                widget.employeeDepartment.name,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 14.0),
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
