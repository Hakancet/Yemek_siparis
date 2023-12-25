import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yemekkaktus/Isletme/Tasarim/IsletmeYemek.dart';

class IsletmeSayfa extends StatefulWidget {
  const IsletmeSayfa({Key? key}) : super(key: key);

  @override
  State<IsletmeSayfa> createState() => _IsletmeSayfaState();
}

class _IsletmeSayfaState extends State<IsletmeSayfa> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController controller = PageController();
  int currentPage = 0;
  late Timer autoLoopTimer;

  @override
  void initState() {
    super.initState();

    autoLoopTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      controller.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    autoLoopTimer.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/images/kaktus.png',
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(
                Icons.computer,
                color: Colors.orange,
                size: 30,
              ),
              title: Text(
                'Yönetim Paneli',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 20),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.orange,
                size: 30,
              ),
              title: Text(
                'Ayarlar',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 20),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.orange,
                size: 30,
              ),
              title: Text(
                'Çıkış Yap',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 20),
              ),
              onTap: () {},
            ),
            const Divider(
              color: Colors.transparent,
              height: 0,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0XFFF3E5F5),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        icon: const Icon(
                          Icons.menu_outlined,
                          size: 30,
                          color: Colors.purple,
                        ),
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/kaktus.png',
                        width: 150,
                        height: 50,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
              SizedBox(
                height: 180,
                width: 400,
                child: PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/teklif.png',
                        width: 400,
                        height: 180,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/tekliff.png',
                        width: 400,
                        height: 180,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/teklifff.png',
                        width: 400,
                        height: 180,
                      ),
                    ),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: const ExpandingDotsEffect(
                  spacing: 8.0,
                  radius: 4.0,
                  dotWidth: 9.0,
                  dotHeight: 9.0,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.indigo,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'En Çok Satan Ürünlerin',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/tabak.png'),
                        label: 'Kahvaltı',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/tabak.png'),
                        label: 'Kahvaltı',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/tabak.png'),
                        label: 'Kahvaltı',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/balik.png'),
                        label: 'Balık',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/tabak.png'),
                        label: 'Kahvaltı',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'En Yeni Ürünlerin',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/tabak.png'),
                        label: 'Kahvaltı',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/balik.png'),
                        label: 'Balık',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/tabak.png'),
                        label: 'Kahvaltı',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/balik.png'),
                        label: 'Balık',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/tabak.png'),
                        label: 'Kahvaltı',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IsletmeYemek(
                        image: const AssetImage('assets/images/balik.png'),
                        label: 'Balık',
                        onTap: () {},
                        point: '5',
                        gram: '120 g',
                        kalori: '85 kalori',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
