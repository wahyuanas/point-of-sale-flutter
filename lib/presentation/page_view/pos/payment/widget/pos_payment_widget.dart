import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

import '../delegate/pos_payment_action_delegate.dart';

class PosPaymentWidget extends StatefulWidget {
  const PosPaymentWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentWidget> createState() => _PosPaymentWidgetState();
}

class _PosPaymentWidgetState extends State<PosPaymentWidget>
    with AutomaticKeepAliveClientMixin<PosPaymentWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

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
                  Column(
                    children: [
                      const SizedBox(
                        height: 30.0,
                        child: ListTile(
                          // trailing: Icon(
                          //   Icons.expand_more_outlined,
                          //   size: 30.0,
                          //   color: Colors.blue,
                          // ),
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 6.0),
                            child: Text(
                              'Kendaraan',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 50,
                          //margin: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                              //color: Colors.blue,
                              border: Border(
                            bottom: BorderSide(
                              color: Colors.blue,
                              width: 0.5,
                            ),
                          )),
                          child: const ListTile(
                            trailing: Icon(
                              Icons.search_outlined,
                              size: 25.0,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Toyota Fortuner',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 30.0,
                        child: ListTile(
                          trailing: Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Icon(
                              Icons.search_outlined,
                              size: 25.0,
                              color: Colors.blue,
                            ),
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 6.0),
                            child: Text(
                              'Mekanik',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 50,
                          //margin: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                              //color: Colors.blue,
                              border: Border(
                            bottom: BorderSide(
                              color: Colors.blue,
                              width: 0.5,
                            ),
                          )),
                          child: const ListTile(
                            title: Text(
                              'Mr. California',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 50,
                          //margin: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                              //color: Colors.blue,
                              border: Border(
                            bottom: BorderSide(
                              color: Colors.blue,
                              width: 0.5,
                            ),
                          )),
                          child: const ListTile(
                            title: Text(
                              'Mr. California',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 50,
                          //margin: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                              //color: Colors.blue,
                              border: Border(
                            bottom: BorderSide(
                              color: Colors.blue,
                              width: 0.5,
                            ),
                          )),
                          child: const ListTile(
                            title: Text(
                              'Mr. California',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
