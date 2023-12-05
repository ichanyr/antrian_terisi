import 'package:antrian_terisi/widget/consultation_queue_widget.dart';
import 'package:antrian_terisi/widget/outlet_report.widget.dart';
import 'package:flutter/material.dart';

class FilledQueueScreen extends StatefulWidget {
  const FilledQueueScreen({Key? key}) : super(key: key);

  @override
  State<FilledQueueScreen> createState() => _FilledQueueScreenState();
}

class _FilledQueueScreenState extends State<FilledQueueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // width: double.infinity,
              height: 410,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(),
              ),
              // color: Colors.amber,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/Mask group.png'),
                          SizedBox(width: 18),
                          Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
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
                              Row(
                                // mainAxisSize: MainAxisSize.max,
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.search),
                                  Icon(Icons.notifications),
                                ],
                              ),
                            ],
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
                      Row(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(children: [
                                Text(
                                  'KD1100147833',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Guilt kirokasam',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '4 Produk',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Rp 25.700',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 14),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff03C96A),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    width: 136,
                                    height: 40,
                                    child:
                                        Center(child: Text('Delivery . Paid'))),
                              ]),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(children: [
                                Text(
                                  'KD1100147833',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Guilt kirokasam',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '4 Produk',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Rp 25.700',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 14),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff03C96A),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    width: 136,
                                    height: 40,
                                    child:
                                        Center(child: Text('Delivery . Paid'))),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Laporan Outlet',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                        )
                      ],
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Antrian Konsultasi',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        ConsultationQueueWidget(
                          imagePath: 'images/Phillip Westervelt.png',
                          name: 'Phillip Westervelt',
                          age: '26 Tahun',
                          nomorAntrian: 'Antrian No.01',
                        ),
                        ConsultationQueueWidget(
                          imagePath: 'images/Kianna Dorwart.png',
                          name: 'Kianna Dorwart',
                          age: '20 Tahun',
                          nomorAntrian: 'Antrian No.02',
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                color: Colors.red,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 29),
                  child: Row(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jeda Konsultasi',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
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
                      ElevatedButton(onPressed: () {}, child: Icon(Icons.add))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                color: Colors.red,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 29),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'History Konsultasi',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
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
                            Text('Kamu bisa melihat history'),
                            Text('konsultasi pasienmu disini')
                          ],
                        ),
                        Image.asset('images/people.png')
                      ],
                    )
                  ]),
                ),
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Sering Direkomendasikan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
