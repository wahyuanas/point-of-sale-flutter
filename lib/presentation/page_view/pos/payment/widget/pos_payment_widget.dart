import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

import '../cubit/pos_payment_cubit.dart';
import '../delegate/pos_payment_action_delegate.dart';
import 'pos_payment_export_widget.dart';

class PosPaymentWidget extends StatefulWidget {
  const PosPaymentWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentWidget> createState() => _PosPaymentWidgetState();
}

class _PosPaymentWidgetState extends State<PosPaymentWidget> {
  late bool _initial;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onCompanyNameChanged("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: AppBar(
              automaticallyImplyLeading: false,
              titleSpacing: 0.0,
              elevation: 0.3,
              backgroundColor: Colors.white,
              // leading: const Icon(
              //   Icons.logo_dev_outlined,
              //   color: Colors.blue,
              // ),
              title: Container(
                decoration: const BoxDecoration(
                    //color: Colors.green,
                    // border: Border(
                    //     bottom: BorderSide(
                    //   color: Colors.blue,
                    //   //width: 3.0,
                    // )),
                    ),
                //height: 100,
                //color: Color.fromARGB(255, 252, 254, 252),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add_card_outlined,
                        color: Color.fromARGB(255, 13, 77, 203),
                      ),
                      const Spacer(),
                      const Text(
                        "Pembayaran",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.person_outline,
                            size: 40.0,
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "User,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Mr. Anyone",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              systemOverlayStyle: const SystemUiOverlayStyle(
                systemNavigationBarColor: Colors.blue, // navigation bar color
                statusBarColor: Colors.white, // status bar color
                statusBarBrightness: Brightness.dark, //status bar brigtness
                statusBarIconBrightness:
                    Brightness.dark, //status barIcon Brightness
                systemNavigationBarDividerColor:
                    Colors.greenAccent, //Navigation bar divider color
                systemNavigationBarIconBrightness:
                    Brightness.light, //navigation bar icon
              ),
              centerTitle: true,
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                pinned: true,
                //floating: true,
                delegate: PosPaymentActionDelegate()),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const PosPaymentCustomerWidget(),
                  const PosPaymentVehicleWidget(),
                  const PosPaymentEmployeeWidget(),
                  BlocBuilder<PosPaymentCubit, PosPaymentState>(
                      buildWhen: (p, c) {
                    if (p.initial != c.initial) {
                      if (c.initial == false) {
                        if (_initial == true) _initial = false;
                        return true;
                      } else if (c.initial == true) {
                        if (_initial == false) _initial = true;
                        _controller.text = '';
                        return false;
                      }
                    } else if (p.status != c.status) {
                      c.status.maybeWhen(
                          initial: () {
                            if (_initial == false) _initial = true;
                            _controller.text = '';
                          },
                          orElse: () => null);
                      return false;
                    } else if (p.createOrder?.paymentCardInfo?.name !=
                        c.createOrder?.paymentCardInfo?.name) {
                      if (_initial == true) _initial = false;
                      return true;
                    }
                    return false;
                  }, builder: (context, state) {
                    debugPrint("POS PAYMENT WIDGET");
                    return TextFormField(
                        controller: _controller,
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Keterangan",
                          labelStyle:
                              TextStyle(color: Colors.black54, fontSize: 15.0),
                          hintText: '',
                          //enabledBorder: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54),
                          ),

                          //border: InputBorder.none,
                        ),
                        onChanged: (v) =>
                            BlocProvider.of<PosPaymentCubit>(context)
                                .onPaymentCardInfoNameChanged(v));
                  }),
                ],
              ),
            )
          ],
        ));
  }
}
