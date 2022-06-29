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

    // BlocProvider(
    //   create: ((context) =>
    //       PosCatalogListCubit(catalogListCubit: getIt<CatalogListCubit>())
    //         ..onStarted()),
    //   child: Intro(
    //     padding: EdgeInsets.zero,
    //     borderRadius: const BorderRadius.all(Radius.circular(5)),
    //     maskColor: const Color.fromRGBO(0, 0, 0, .6),
    //     buttonTextBuilder: (order) => order == 1 ? 'OK' : 'Next',
    //     child: const PosCatalogListWidget(),
    //   ),
    // );
  }
}
