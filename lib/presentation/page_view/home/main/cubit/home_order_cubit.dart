import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/customer/entity/customer.dart';
import 'package:pos/domain/employee/entity/employees.dart';
import 'package:pos/domain/employee_department/entity/employees_department.dart';
import 'package:pos/domain/order_detail/entity/order_detail.dart';
import 'package:pos/domain/payment_card_info/entity/payment_card_info.dart';
import 'package:pos/domain/vehicle/entity/vehicle.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';
import 'package:pos/domain/vehicle_owner/entity/vehicle_owner.dart';
import 'package:pos/domain/vehicle_type/entity/vehicle_type.dart';
import 'package:pos/presentation/main/catalog/model/item_model.dart';
import 'package:pos/presentation/main/customer/list/cubit/customer_list_cubit.dart';
import 'package:pos/presentation/main/customer/model/customer_model.dart';
import 'package:pos/presentation/main/employee/list/cubit/employee_list_cubit.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';
import 'package:pos/presentation/main/employee_department/list/cubit/employee_department_list_cubit.dart';
import 'package:pos/presentation/main/employee_department/model/employees_department_model.dart';
import 'package:pos/presentation/main/order/cubit/order_list_cubit.dart';
import 'package:pos/presentation/main/order/model/order_model.dart';
import 'package:pos/presentation/main/order_detail/cubit/order_detail_list_cubit.dart';
import 'package:pos/presentation/main/order_detail/model/order_detail_model.dart';
import 'package:pos/presentation/main/payment_card_info/list/cubit/payment_card_info_list_cubit.dart';
import 'package:pos/presentation/main/payment_card_info/model/payment_card_info_model.dart';
import 'package:pos/presentation/main/vehicle/list/vehicle_list_cubit.dart';
import 'package:pos/presentation/main/vehicle/model/vehicle_model.dart';
import 'package:collection/collection.dart';
import 'package:pos/presentation/main/vehicle_manufacture/list/cubit/vehicle_manufacture_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_manufacture/model/vehicle_manufacture_model.dart';
import 'package:pos/presentation/main/vehicle_owner/list/cubit/vehicle_owner_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_owner/model/vehicle_owner_model.dart';
import 'package:pos/presentation/main/vehicle_type/list/cubit/vehicle_type_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/model/vehicle_type_model.dart';

part 'home_order_state.dart';
part 'home_order_cubit.freezed.dart';

class HomeOrderCubit extends Cubit<HomeOrderState> {
  final OrderListCubit orderListCubit;
  final OrderDetailListCubit orderDetailListCubit;
  final CustomerListCubit customerListCubit;
  final EmployeeListCubit employeeListCubit;
  final VehicleListCubit vehicleListCubit;
  final EmployeeDepartmentListCubit employeeDepartmentListCubit;
  final PaymentCardInfoListCubit paymentCardInfoListCubit;
  final VehicleTypeListCubit vehicleTypeListCubit;
  final VehicleOwnerListCubit vehicleOwnerListCubit;
  final VehicleManufactureListCubit vehicleManufactureListCubit;
  HomeOrderCubit(
      {required this.orderListCubit,
      required this.paymentCardInfoListCubit,
      required this.customerListCubit,
      required this.employeeListCubit,
      required this.employeeDepartmentListCubit,
      required this.vehicleListCubit,
      required this.vehicleTypeListCubit,
      required this.vehicleOwnerListCubit,
      required this.vehicleManufactureListCubit,
      required this.orderDetailListCubit})
      : _orderListCubit = orderListCubit,
        _orderDetailListCubit = orderDetailListCubit,
        _paymentCardInfoListCubit = paymentCardInfoListCubit,
        _customerListCubit = customerListCubit,
        _employeeListCubit = employeeListCubit,
        _vehicleListCubit = vehicleListCubit,
        _employeeDepartmentListCubit = employeeDepartmentListCubit,
        _vehicleTypeListCubit = vehicleTypeListCubit,
        _vehicleOwnerListCubit = vehicleOwnerListCubit,
        _vehicleManufactureListCubit = vehicleManufactureListCubit,
        super(HomeOrderState.initial()) {
    _subscriptionuHomeOrderCubit =
        _orderListCubit.stream.listen((orderListState) {
      //onOrderListChanged(orderListState);
    });
  }

  final OrderListCubit _orderListCubit;
  final OrderDetailListCubit _orderDetailListCubit;
  final PaymentCardInfoListCubit _paymentCardInfoListCubit;
  final CustomerListCubit _customerListCubit;
  final EmployeeListCubit _employeeListCubit;
  final EmployeeDepartmentListCubit _employeeDepartmentListCubit;
  final VehicleListCubit _vehicleListCubit;
  final VehicleTypeListCubit _vehicleTypeListCubit;
  final VehicleOwnerListCubit _vehicleOwnerListCubit;
  final VehicleManufactureListCubit _vehicleManufactureListCubit;
  late StreamSubscription _subscriptionuHomeOrderCubit;

  // onSearchKeyChanged(String v) {
  //   if (v.isNotEmpty) {
  //     List<Order>? listIOrder; //= List.from(state.items!.toList());
  //     listIOrder = orders
  //         .where((order) =>
  //             order.withName.toLowerCase().contains(v.toLowerCase()) ||
  //             order.code.toLowerCase().contains(v.toLowerCase()))
  //         .toList();
  //     if (listIOrder.isEmpty) {
  //       listIOrder = null;
  //     }
  //     emit(state.copyWith(orders: listIOrder));
  //   } else {
  //     emit(HomeOrderState.initial());
  //   }
  // }

  onStarted() {
    List<OrderDetailModel>? orderDetailModels = [];
    VehicleModel? vehicleModel;
    VehicleTypeModel? vehicleTypeModel;
    VehicleManufactureModel? vehicleManufactureModel;
    VehicleOwnerModel? vehicleOwnerModel;
    CustomerModel? customerModel;
    PaymentCardInfoModel? paymentCardInfoModel;
    List<EmployeesModel>? employeesModels = [];
    Vehicle? vehicle;
    VehicleType? vehicleType;
    VehicleManufacture? vehicleManufacture;
    EmployeesDepartment? employeesDepartment;
    VehicleOwner? vehicleOwner;
    Customer? customer;
    PaymentCardInfo? paymentCardInfo;
    Employees? employee;
    OrderDetail orderDetail;
    EmployeesDepartmentModel? employeesDepartmentModel;

    List<OrderModel>? orderModels = _orderListCubit.state.orders?.map((order) {
      //PAYMENTCARDINFO
      if (order.paymentType != 1) {
        paymentCardInfo = _paymentCardInfoListCubit.state.paymentCardInfos
            ?.firstWhereOrNull((ci) => ci.id == order.paymentCardInfo);

        if (paymentCardInfo != null) {
          paymentCardInfoModel =
              PaymentCardInfoModel.createPaymentCardInfoModel(paymentCardInfo!);
        }
      }

      //CUSTOMER
      customer = _customerListCubit.state.customers
          ?.firstWhereOrNull((ct) => ct.id == order.customerId);
      if (customer != null) {
        customerModel = CustomerModel.fromCustomer(customer!);
      }

      //EMPLOYEE
      for (var emp in order.employeeId) {
        employee = _employeeListCubit.state.employees
            ?.firstWhereOrNull((ec) => ec.id == emp);

        if (employee != null) {
          employeesDepartment = _employeeDepartmentListCubit
              .state.employeesDepartments
              ?.firstWhereOrNull((edpt) => edpt.id == employee?.departmentId);
        }
        if (employeesDepartment != null) {
          employeesDepartmentModel =
              EmployeesDepartmentModel.createEmployeesDepartmentModel(
                  employeesDepartment);
        }
        employeesModels?.add(EmployeesModel.createEmployeesModel(
            employee!, employeesDepartmentModel));
      }

      if (employeesModels!.isEmpty) {
        employeesModels = null;
      }

      //VEHICLE
      vehicle = _vehicleListCubit.state.vehicles
          ?.firstWhereOrNull((v) => v.id == order.vehicleId);

      if (vehicle != null) {
        vehicleType = _vehicleTypeListCubit.state.vehicleTypes
            ?.firstWhereOrNull((vt) => vt.id == vehicle!.vehicleType);

        vehicleOwner = _vehicleOwnerListCubit.state.vehicleOwners
            ?.firstWhereOrNull((vo) => vo.id == vehicle!.vehicleOwner);

        if (vehicleOwner != null) {
          vehicleOwnerModel =
              VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
        }

        if (vehicleType != null) {
          vehicleManufacture = _vehicleManufactureListCubit
              .state.vehicleManufactures
              ?.firstWhereOrNull((vm) => vm.id == vehicleType?.manufacture);

          if (vehicleManufacture != null) {
            vehicleManufactureModel =
                VehicleManufactureModel.createVehicleManufactureModel(
                    vehicleManufacture);
          }

          vehicleTypeModel = VehicleTypeModel.createVehicleTypeModel(
              vehicleType, vehicleManufactureModel);
        }

        vehicleModel = VehicleModel.createVehicleModel(
            vehicle!, vehicleTypeModel, vehicleOwnerModel);
      }

      _orderDetailListCubit.state.orderDetails?.forEach((od) {
        if (od.orderId == order.id) {
          orderDetail = OrderDetail.createOrderDetail(
              od.id, od.orderId, od.item, od.accountId);
          orderDetailModels?.add(OrderDetailModel.createOrderDetailModel(
              orderDetail, ItemModel.item(od.item)));
        }
      });

      if (orderDetailModels!.isEmpty) {
        orderDetailModels = null;
      }

      return OrderModel.createOrderModel(order, orderDetailModels, vehicleModel,
          customerModel, paymentCardInfoModel, employeesModels);
    }).toList();
    emit(state.copyWith(orders: orderModels));
  }

  onReset() {
    emit(HomeOrderState.initial());
  }

  @override
  Future<void> close() {
    _subscriptionuHomeOrderCubit.cancel();
    return super.close();
  }
}
