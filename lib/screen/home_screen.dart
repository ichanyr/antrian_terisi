import 'package:antrian_terisi/widget/consultation_queue_widget.dart';
import 'package:antrian_terisi/widget/often_recommended_widget.dart';
import 'package:antrian_terisi/widget/online_order_widget.dart';
import 'package:antrian_terisi/widget/outlet_report.widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _FilledQueueScreenState();
}

class _FilledQueueScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3CB05),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/Mask group.png'),
                        SizedBox(width: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Justin Philips',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Apoteker',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              Icon(Icons.notifications),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pesanan Online',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Lihat semua',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 202,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          OnlineOrderWidget(
                            id: 'KD1100147833',
                            title: 'Guilt kirokasam',
                            subtitle: '4 Produk',
                            amount: 'Rp 25.700',
                            status: 'Delivery . Paid',
                          ),
                          SizedBox(width: 16),
                          OnlineOrderWidget(
                            id: 'KD1100147833',
                            title: 'Guilt kirokasam',
                            subtitle: '4 Produk',
                            amount: 'Rp 25.700',
                            status: 'Delivery . Paid',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 1420,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Laporan Outlet',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.0,
                          mainAxisSpacing: 16.0,
                          children: <Widget>[
                            OutletReportWidget(
                              imagePath: 'images/total profit.png',
                              title: 'Total Profit',
                              value: '45 JT',
                              date: 'Oktober 2023',
                            ),
                            OutletReportWidget(
                              imagePath: 'images/penjualan.png',
                              title: 'Penjualan',
                              value: '2,5 JT',
                              date: 'Perhari/7 hari',
                            ),
                            OutletReportWidget(
                              imagePath: 'images/produk.png',
                              title: 'Produk',
                              value: '1360',
                              date: 'Perhari/7 hari',
                            ),
                            OutletReportWidget(
                              imagePath: 'images/customer.png',
                              title: 'Customer',
                              value: '68',
                              date: 'Perhari/7 hari',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 32),
                      Text(
                        'Antrian Konsultasi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 250,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ConsultationQueueWidget(
                              imagePath: 'images/Phillip Westervelt.png',
                              name: 'Phillip Westervelt',
                              age: '26 Tahun',
                              nomorAntrian: 'Antrian No.01',
                            ),
                            SizedBox(width: 12),
                            ConsultationQueueWidget(
                              imagePath: 'images/Kianna Dorwart.png',
                              name: 'Kianna Dorwart',
                              age: '20 Tahun',
                              nomorAntrian: 'Antrian No.01',
                            ),
                            SizedBox(width: 12),
                            ConsultationQueueWidget(
                              imagePath: 'images/Ahmad Carder.png',
                              name: 'Ahmad Carder',
                              age: '27 Tahun',
                              nomorAntrian: 'Antrian No.03',
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 25),
                          child: Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jeda Konsultasi',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Kamu bisa mengatur jeda/istirahat',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7E7E7E)),
                                    ),
                                    Text(
                                      'jika dikondisi khusus tertentu',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7E7E7E)),
                                    ),
                                  ]),
                              SizedBox(width: 35),
                              ElevatedButton(
                                  onPressed: () {}, child: Icon(Icons.add))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 29),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'History Konsultasi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  width: 85,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFEFEF),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '52 Pasien',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffEE2737)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kamu bisa melihat history',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7E7E7E)),
                                    ),
                                    Text(
                                      'konsultasi pasienmu disini',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7E7E7E)),
                                    )
                                  ],
                                ),
                                Image.asset('images/people.png')
                              ],
                            )
                          ]),
                        ),
                      ),
                      SizedBox(height: 32),
                      Text(
                        'Sering Direkomendasikan',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 18),
                      Container(
                        height: 250,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            RecommendationCard(
                              imagePath: 'images/image 144.png',
                              title: 'Blackmorse Botol 30 Tablet',
                              price: 'Rp 35.500',
                              discountedPrice: 'Rp 20.000',
                              rating: 4.2,
                            ),
                            SizedBox(width: 12),
                            RecommendationCard(
                              imagePath: 'images/image 143.png',
                              title: 'Blackmorse Botol 30 Tablet',
                              price: 'Rp 35.500',
                              discountedPrice: 'Rp 20.000',
                              rating: 4.2,
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
