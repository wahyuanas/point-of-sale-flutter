import 'package:flutter/material.dart';

class PosPaymentExtendedSubPriceWidget extends StatelessWidget {
  const PosPaymentExtendedSubPriceWidget({Key? key}) : super(key: key);

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
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Sub Total',
                          style: TextStyle(color: Colors.blue, fontSize: 15.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Rp. 1232400',
                          style: TextStyle(color: Colors.black, fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Diskon Tambahan',
                          style: TextStyle(color: Colors.blue, fontSize: 15.0),
                        ),
                      ),
                      //Spacer(),
                      Expanded(
                        child: TextFormField(
                            autofocus: false,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.percent_outlined,
                                color: Colors.blue,
                                size: 26.0, /*Color(0xff224597)*/
                              ),
                              labelText: "Diskon Tambahan",
                              labelStyle: TextStyle(
                                  color: Colors.black54, fontSize: 15.0),
                              hintText: '',
                              //enabledBorder: InputBorder.none,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54),
                              ),
                            ),
                            onChanged: (v) {
                              // BlocProvider.of<PosPaymentCubit>(context)
                              //     .onPaymentCardInfoNameChanged(v);
                            }),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Biaya Tambahan',
                          style: TextStyle(color: Colors.blue, fontSize: 15.0),
                        ),
                      ),
                      //Spacer(),
                      Expanded(
                        child: TextFormField(
                            autofocus: false,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.description_outlined,
                                color: Colors.blue,
                                size: 26.0, /*Color(0xff224597)*/
                              ),
                              labelText: "Biaya Tambahan",
                              labelStyle: TextStyle(
                                  color: Colors.black54, fontSize: 15.0),
                              hintText: '',
                              //enabledBorder: InputBorder.none,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54),
                              ),
                            ),
                            onChanged: (v) {
                              // BlocProvider.of<PosPaymentCubit>(context)
                              //     .onPaymentCardInfoNameChanged(v);
                            }),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'PPN',
                          style: TextStyle(color: Colors.blue, fontSize: 15.0),
                        ),
                      ),
                      //Spacer(),
                      Expanded(
                        child: TextFormField(
                            autofocus: false,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.description_outlined,
                                color: Colors.blue,
                                size: 26.0, /*Color(0xff224597)*/
                              ),
                              labelText: "PPN",
                              labelStyle: TextStyle(
                                  color: Colors.black54, fontSize: 15.0),
                              hintText: '',
                              //enabledBorder: InputBorder.none,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54),
                              ),
                            ),
                            onChanged: (v) {
                              // BlocProvider.of<PosPaymentCubit>(context)
                              //     .onPaymentCardInfoNameChanged(v);
                            }),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Grand Total',
                    style: TextStyle(color: Colors.blue, fontSize: 17.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    //height: 50,
                    //margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //color: Colors.blue,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.lightBlue.shade900,
                            width: 1.5,
                          ),
                        )),
                    child: Column(
                      children: [
                        const Text(
                          'Rp. 1232400',
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
