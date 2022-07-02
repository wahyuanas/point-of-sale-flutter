import 'package:flutter/material.dart';
import '../widget/pos_payment_widget.dart';

class PosPaymentScreen extends StatefulWidget {
  const PosPaymentScreen({Key? key}) : super(key: key);

  @override
  State<PosPaymentScreen> createState() => _PosPaymentScreenState();
}

class _PosPaymentScreenState extends State<PosPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return const PosPaymentWidget();
  }
}
