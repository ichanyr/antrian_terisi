// import 'package:antrian_terisi/widget/custom_paid_card_widget.dart';
// import 'package:antrian_terisi/widget/custom_sale_card_widget.dart';
// import 'package:flutter/material.dart';

// class FinishedView extends StatelessWidget {
//   const FinishedView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: CustomSaleCardWidget(
//         id: 'KD1100147833',
//         name: 'Terry Rossalina',
//         productCount: '4 Produk',
//         schedule: '09.30 - 11.30 WIB',
//         price: 'Rp 81.000',
//         status: 'Delivery . Paid',
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class FinishedView extends StatelessWidget {
  const FinishedView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 4,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'KD1100147833',
                style: TextStyle(
                    color: Color(0xff7E7E7E),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 8),
              Text(
                'Terry Rossalina',
                style: TextStyle(
                    color: Color(0xff1C1C1C),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8),
              Text(
                '4 ProduK',
                style: TextStyle(
                    color: Color(0xff1C1C1C),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Image.asset('images/Group.png'),
                  SizedBox(width: 8),
                  Text(
                    '09.30 - 11.30 WIB',
                    style: TextStyle(
                        color: Color(0xff7E7E7E),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ]),
            Column(
              children: [
                Text(
                  'Rp 81.000',
                  style: TextStyle(
                      color: Color(0xff1C1C1C),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 16),
                Card(
                  color: Color(0xff03C96A),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Delivery . Paid',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
