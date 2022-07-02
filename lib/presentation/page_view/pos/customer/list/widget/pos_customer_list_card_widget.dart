// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pos/domain/customer/entity/customer.dart';
// import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

// class PosCustomerListCardWidget extends StatefulWidget {
//   final Customer customer;
//   const PosCustomerListCardWidget({Key? key, required this.customer})
//       : super(key: key);

//   @override
//   State<PosCustomerListCardWidget> createState() =>
//       _PosCustomerListCardWidgetState();
// }

// class _PosCustomerListCardWidgetState extends State<PosCustomerListCardWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<PosPaymentCubit, PosPaymentState>(
//       listener: (context, state) async {
//         if (state.idItem == widget.item.id) {
//           pos = null;
//           int? index = state.poss?.indexWhere((posc) {
//             return posc.item.id == widget.item.id;
//           });
//           if (index != null) {
//             if (index >= 0) {
//               pos = state.poss![index];
//             }
//           }
//           setState(() {});
//         }
//       },
//     );

//     Card(
//       child: Padding(
//         padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             GestureDetector(
//               onTap: () async {
//                 // BlocProvider.of<RouteCubit>(context).onRoute(
//                 //     const OnRouteState.posCatalogItemDetail(
//                 //         r: '/posCatalogItemDetail'),
//                 //     widget.pos.item);
//               },
//               child: ListTile(
//                 trailing: GestureDetector(
//                   onTap: () {},
//                   child: const Icon(
//                     Icons.done_outlined,
//                     size: 25.0,
//                     color: Colors.blue,
//                   ),
//                 ),
//                 title: Row(
//                   children: [
//                     const Icon(
//                       Icons.person,
//                       size: 40,
//                     ),
//                     Container(),
//                     const SizedBox(
//                       width: 10.0,
//                     ),
//                     Expanded(
//                       child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               widget.customer.code,
//                               style: const TextStyle(
//                                   color: Colors.blue, fontSize: 15.0),
//                             ),
//                             const SizedBox(
//                               height: 5.0,
//                             ),
//                             Text(
//                               widget.customer.name,
//                               style: const TextStyle(
//                                   color: Colors.black, fontSize: 14.0),
//                             ),
//                             const SizedBox(
//                               height: 5.0,
//                             ),
//                             Wrap(
//                               children: [
//                                 Wrap(
//                                   children: [
//                                     const Text("HP ",
//                                         style: TextStyle(
//                                             decoration:
//                                                 TextDecoration.underline,
//                                             height: 1.2)),
//                                     Text("${widget.customer.phoneNumber}%",
//                                         style: const TextStyle(
//                                             color: Colors.blue, height: 1.2)),
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                   width: 10.0,
//                                 ),
//                                 const Text(
//                                   "|",
//                                   style: TextStyle(height: 1.2),
//                                 ),
//                                 const SizedBox(
//                                   width: 10.0,
//                                 ),
//                                 Wrap(
//                                   children: [
//                                     const Text("Email ",
//                                         style: TextStyle(
//                                             decoration:
//                                                 TextDecoration.underline,
//                                             height: 1.2)),
//                                     Text("${widget.customer.email}%",
//                                         style: const TextStyle(
//                                             color: Colors.blue, height: 1.2)),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ]),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
