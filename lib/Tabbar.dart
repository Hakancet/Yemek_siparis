import 'package:flutter/material.dart';
import 'package:yemekkaktus/Zoom/Anasayfa.dart';
import 'package:yemekkaktus/Kullanici/Profil.dart';
import 'package:yemekkaktus/QrPage.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0XFFF5F5F5),
          currentIndex: select,
          onTap: (index) {
            setState(() {
              select = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
                color: select == 0 ? Colors.orange : Colors.grey,
              ),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code,
                size: 30,
                color: select == 1 ? Colors.orange : Colors.grey,
              ),
              label: 'QR Kod',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: select == 2 ? Colors.orange : Colors.grey,
              ),
              label: 'Profil',
            ),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.purple[900],
          elevation: 50,
        ),
      ),
      body: Stack(
        children: [
          renderView(
            0,
             Anasayfa(),
          ),
          renderView(
            1,
            const QrPage(),
          ),
          renderView(
            2,
            const Profil(),
          ),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: select != tabIndex,
      child: Opacity(
        opacity: select == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
