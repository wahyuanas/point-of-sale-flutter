import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

class PosPaymentActionWidget extends StatefulWidget {
  const PosPaymentActionWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentActionWidget> createState() => _PosPaymentActionWidgetState();
}

class _PosPaymentActionWidgetState extends State<PosPaymentActionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        border: Border(
            bottom: BorderSide(
          color: Colors.blue,
          //width: 3.0,
        )),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => BlocProvider.of<RouteCubit>(context).onRoute(
                  const OnRouteState.postCatalogList(r: '/postCatalogList'),
                  null),
              child: Card(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.blue, width: 0.5),
                    borderRadius: BorderRadius.circular(10.0)),
                child: SizedBox(
                  height: 60,
                  width: 80,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.blue,
                      ),
                      Text(
                        "Tambah",
                        style: TextStyle(
                            fontSize: 13,
                            //fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.blue, width: 0.5),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 80,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.near_me_outlined,
                            color: Colors.blue,
                          ),
                          Text(
                            "Bayar",
                            style: TextStyle(
                                fontSize: 13,
                                //fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
