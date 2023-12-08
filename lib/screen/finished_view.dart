import 'package:antrian_terisi/widget/custom_sale_card_widget.dart';
import 'package:flutter/material.dart';

class FinishedView extends StatelessWidget {
  const FinishedView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomSaleCardWidget(
        id: 'KD1100147833',
        name: 'Terry Rossalina',
        productCount: '4 Produk',
        schedule: '09.30 - 11.30 WIB',
        price: 'Rp 81.000',
        status: 'Delivery . Paid',
      ),
    );
  }
}
