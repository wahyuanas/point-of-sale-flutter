import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/main/modal/cubit/modal_cubit.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import '../../routes/on_state/pos_on_route_state.dart';
import '../delegate/pos_payment_action_delegate.dart';
import 'card_info/pos_payment_card_info_widget.dart';
import 'customer/pos_payment_customer_widget.dart';
import 'employee/pos_payment_employee_widget.dart';
import 'extended/pos_payment_extended_widget.dart';
import 'type/pos_payment_type_widget.dart';
import 'vehicle/pos_payment_vehicle_widget.dart';

class PosPaymentWidget extends StatefulWidget {
  const PosPaymentWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentWidget> createState() => _PosPaymentWidgetState();
}

class _PosPaymentWidgetState extends State<PosPaymentWidget> {
  @override
  void initState() {
    super.initState();
    context.read<PosPaymentCubit>().state.status.maybeMap(
        initial: (v) => null,
        orElse: () {
          debugPrint(
              "POS PAYMENT WIDGET ${context.read<PosPaymentCubit>().state.status}");
          context.read<PosPaymentCubit>().onInitial();
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PosPaymentCubit, PosPaymentState>(
      listener: (context, state) {
        state.status.when(
            initial: (() => null),
            loading: () {
              BlocProvider.of<ModalCubit>(context)
                  .onModalPush("Sedang Proses...");
            },
            success: (r) async {
              if (!mounted) return;
              BlocProvider.of<ModalCubit>(context)
                  .onModalContent("Berhasil Create Data");
              await Future.delayed(const Duration(milliseconds: 1000));
              if (!mounted) return;
              BlocProvider.of<ModalCubit>(context).onModalPop();
              //BlocProvider.of<PosPaymentCubit>(context).onInitial();
              Navigator.of(context).pop();
              BlocProvider.of<PosRouteCubit>(context).onRoute(
                  const PosOnRouteState.posPaymentSuccess(
                      r: '/posPaymentSuccess'),
                  null);
            },
            failure: (f) {
              BlocProvider.of<ModalCubit>(context)
                  .onModalFailure(FailureExceptions.getErrorMessage(f));
            });
      },
      child: Scaffold(
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
          body: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                  pinned: true,
                  //floating: true,
                  delegate: PosPaymentActionDelegate()),
              SliverToBoxAdapter(
                child: Column(
                  children: const [
                    PosPaymentCustomerWidget(),
                    PosPaymentVehicleWidget(),
                    PosPaymentEmployeeWidget(),
                    PosPaymentTypeWidget(),
                    PosPaymentCardInfoWidget(),
                    PosPaymentExtendedWidget()
                  ],
                ),
              )
            ],
          )),
    );
  }
}
