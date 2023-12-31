import 'package:antrian_terisi/screen/consultation_screen.dart';
import 'package:antrian_terisi/screen/home_screen.dart';
import 'package:antrian_terisi/screen/profile_screen.dart';
import 'package:antrian_terisi/screen/sale_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOpstions = <Widget>[
    HomeScreen(),
    ConsultationScreen(),
    SaleScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    print('${_selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOpstions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //agar ketika klik icon, halaman mengikuti
        onTap: _onItemTapped,
        elevation: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0XFF35A29F),
        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType
            .fixed, //karena iconnya < 5, jika > 5 menggunakan .shifthing
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              activeIcon: Icon(Icons.phone),
              label: 'Konsultasi'),
          BottomNavigationBarItem(
              icon: Icon(Icons.medication),
              activeIcon: Icon(Icons.medication),
              label: 'Penjualan'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person),
              label: 'Profil'),
        ],
      ),
    );
  }
}
