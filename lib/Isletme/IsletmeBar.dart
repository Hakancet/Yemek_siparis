import 'package:flutter/material.dart';
import 'package:yemekkaktus/Isletme/IsletmeProfil.dart';
import 'package:yemekkaktus/Isletme/IsletmeSayfa.dart';
import 'package:yemekkaktus/Isletme/Menu.dart';

class IsletmeBar extends StatefulWidget {
  const IsletmeBar({Key? key}) : super(key: key);

  @override
  State<IsletmeBar> createState() => _IsletmeBarState();
}

class _IsletmeBarState extends State<IsletmeBar> {
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
                Icons.home_filled,
                size: 30,
                color: select == 0 ? Colors.orange : Colors.grey,
              ),
              label: 'Ana Sayfan',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_outlined,
                size: 30,
                color: select == 1 ? Colors.orange : Colors.grey,
              ),
              label: 'Menü',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.storefront,
                size: 30,
                color: select == 2 ? Colors.orange : Colors.grey,
              ),
              label: 'İşletmem',
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
            const IsletmeSayfa(),
          ),
          renderView(
            1,
            const Menu(),
          ),
          renderView(
            2,
            const IsletmeProfil(),
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
