import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/presentation/main/payment_card_info/model/payment_card_info_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();
  const factory OrderModel({
    required int id,
    required String uuid,
    required String code,
    required int customerId,
    required int vehicleId,
    required List<int> employeeId,
    required DateTime date,
    required int amount,
    required int grandAmount,
    required int disc,
    required int paymentType,
    required PaymentCardInfoModel paymentCardInfo,
    required int charge,
    required int paidAmount,
    required int changeAmount,
    required String description,
    required int tax,
    required int itemNumber,
    required int paidStatus,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
