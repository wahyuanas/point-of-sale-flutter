import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../delegate/pos_payment_success_action_delegate.dart';

class PosPaymentSuccessScreen extends StatefulWidget {
  const PosPaymentSuccessScreen({Key? key}) : super(key: key);

  @override
  State<PosPaymentSuccessScreen> createState() =>
      _PosPaymentSuccessScreenState();
}

class _PosPaymentSuccessScreenState extends State<PosPaymentSuccessScreen> {
  @override
  void initState() {
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
                        style: TextStyle(color: Colors.blue, fontSize: 17.0),
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
        body: CustomScrollView(slivers: [
          SliverPersistentHeader(
              pinned: true,
              //floating: true,
              delegate: PosPaymentSuccessActionDelegate()),
          const SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.only(right: 20.0, left: 20.0),
              child: Center(
                child: Text(
                  "Penjualan Tersimpan...",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
            ),
          )
        ]));
  }
}
