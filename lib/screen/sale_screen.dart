import 'package:antrian_terisi/screen/finished_view.dart';
import 'package:antrian_terisi/screen/pending_view.dart';
import 'package:flutter/material.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({super.key});

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int? _activeTabIndex;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController?.addListener(_setActiveTabIndex);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _setActiveTabIndex() {
    setState(() {
      _activeTabIndex = _tabController?.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF3CB05),
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Cari Pasien kamu disini',
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Color(0xff1C1C1C),
          labelColor: Color(0xff1C1C1C),
          labelPadding: EdgeInsets.only(bottom: 10),
          tabs: [
            Tab(
              text: 'Pending',
            ),
            Tab(
              text: 'Selesai',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            PendingView(),
            FinishedView(),
          ],
        ),
      ),
    );
  }
}


// import 'package:antrian_terisi/screen/finished_view.dart';
// import 'package:antrian_terisi/screen/pending_view.dart';
// import 'package:flutter/material.dart';

// class SaleScreen extends StatefulWidget {
//   const SaleScreen({Key? key}) : super(key: key);

//   @override
//   State<SaleScreen> createState() => _SaleScreenState();
// }

// class _SaleScreenState extends State<SaleScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 color: Color(0xffF3CB05),
//                 width: 428,
//                 // height: 170,
//                 child: Padding(
//                   padding: const EdgeInsets.all(24.0),
//                   child: Column(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(color: Colors.white),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(50))),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             hintText: 'Cari Pasien kamu disini',
//                             prefixIcon: Icon(Icons.search),
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 24),
//                       TabBar(tabs: [
//                         Tab(
//                           text: 'Pending',
//                         ),
//                         Tab(
//                           text: 'Selesai',
//                         ),
//                       ]),
//                       SizedBox(height: 24),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                   child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: TabBarView(children: [
//                   PendingView(),
//                   FinishedView(),
//                 ]),
//               ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
