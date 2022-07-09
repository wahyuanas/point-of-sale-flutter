import 'package:flutter/material.dart';

import 'pos_payment_extended_export_widget.dart';

class PosPaymentExtendedWidget extends StatelessWidget {
  const PosPaymentExtendedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Column(
          children: [
            Container(
              //height: 50,
              //margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  //color: Colors.blue,
                  border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 1.5,
                ),
              )),
              child: Column(
                children: const [
                  PosPaymentExtendedSubPriceWidget(),
                  PosPaymentExtendedDiscWidget(),
                  PosPaymentExtendedChargeWidget(),
                  PosPaymentExtendedTaxWidget(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const PosPaymentExtendedGrandPriceWidget(),
            const PosPaymentExtendedPaidWidget(),
            const PosPaymentExtendedChangeWidget(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
