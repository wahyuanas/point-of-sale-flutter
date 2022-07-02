import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';

import '../cubit/pos_payment_cubit.dart';
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
