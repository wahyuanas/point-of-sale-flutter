import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/order/entity/order.dart';
import 'package:pos/presentation/main/customer/model/customer_model.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';
import 'package:pos/presentation/main/order_detail/model/order_detail_model.dart';
import 'package:pos/presentation/main/payment_card_info/model/payment_card_info_model.dart';
import 'package:pos/presentation/main/vehicle/model/vehicle_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();
  const factory OrderModel(
      {required int id,
      required String uuid,
      required String code,
      required CustomerModel? customer,
      required VehicleModel? vehicle,
      required List<EmployeesModel>? employee,
      required DateTime date,
      required int amount,
      required int grandAmount,
      required double? disc,
      required int paymentType,
      required PaymentCardInfoModel? paymentCardInfo,
      required int? charge,
      required int paidAmount,
      required int changeAmount,
      required String? description,
      required int? tax,
      required int itemNumber,
      required int paidStatus,
      required int accountId,
      required List<OrderDetailModel>? orderDetail}) = _OrderModel;

  factory OrderModel.createOrderModel(
      Order order,
      List<OrderDetailModel>? orderDetail,
      VehicleModel? vehicle,
      CustomerModel? customer,
      PaymentCardInfoModel? paymentCardInfoModel,
      List<EmployeesModel>? employees) {
    return OrderModel(
        id: order.id,
        uuid: order.uuid,
        description: order.description ?? '',
        accountId: order.accountId,
        vehicle: vehicle,
        customer: customer,
        amount: order.amount,
        changeAmount: order.changeAmount,
        charge: order.charge,
        code: order.code,
        date: order.date,
        disc: order.disc,
        employee: employees,
        grandAmount: order.grandAmount,
        itemNumber: order.itemNumber,
        paidAmount: order.paidAmount,
        paidStatus: order.paidStatus,
        paymentCardInfo: paymentCardInfoModel,
        paymentType: order.paymentType,
        tax: order.tax,
        orderDetail: orderDetail);
  }

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
