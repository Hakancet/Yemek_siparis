import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekkaktus/Isletme/Tasarim/MenuTasar%C4%B1m.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        scrolledUnderElevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Menü', style: GoogleFonts.poppins(fontWeight: FontWeight.w500 ,fontSize: 25),),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 18),
                  child: Text(
                    'İçecekler',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFFFF9C4),
                        image: const AssetImage('assets/images/menu/limonata.png' , ),
                        label: 'Limonata',
                        onTap: () {},
                        subtitle: '     Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFFFF9C4),
                        image: const AssetImage('assets/images/menu/limonata.png' , ),
                        label: 'Limonata',
                        onTap: () {},
                        subtitle: '     Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFFFF9C4),
                        image: const AssetImage('assets/images/menu/limonata.png' , ),
                        label: 'Limonata',
                        onTap: () {},
                        subtitle: '     Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFFFF9C4),
                        image: const AssetImage('assets/images/menu/limonata.png' , ),
                        label: 'Limonata',
                        onTap: () {},
                        subtitle: '     Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFFFF9C4),
                        image: const AssetImage('assets/images/menu/limonata.png' , ),
                        label: 'Limonata',
                        onTap: () {},
                        subtitle: '     Fiyat Girin',
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 18),
                  child: Text(
                    'Yemek',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFF6EB5EFFF),
                        image: const AssetImage('assets/images/balik.png' , ),
                        label: 'Balık',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFF6EB5EFFF),
                        image: const AssetImage('assets/images/balik.png' , ),
                        label: 'Balık',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFF6EB5EFFF),
                        image: const AssetImage('assets/images/balik.png' , ),
                        label: 'Balık',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFF6EB5EFFF),
                        image: const AssetImage('assets/images/balik.png' , ),
                        label: 'Balık',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFF6EB5EFFF),
                        image: const AssetImage('assets/images/balik.png' , ),
                        label: 'Balık',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 18),
                  child: Text(
                    'Tatlı',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFF8BBD0),
                        image: const AssetImage('assets/images/menu/tatli.png' , ),
                        label: 'Tatlı',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFF8BBD0),
                        image: const AssetImage('assets/images/menu/tatli.png' , ),
                        label: 'Tatlı',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFF8BBD0),
                        image: const AssetImage('assets/images/menu/tatli.png' , ),
                        label: 'Tatlı',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFF8BBD0),
                        image: const AssetImage('assets/images/menu/tatli.png' , ),
                        label: 'Tatlı',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFF8BBD0),
                        image: const AssetImage('assets/images/menu/tatli.png' , ),
                        label: 'Tatlı',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 18),
                  child: Text(
                    'Atıştırmalık',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFE0F7FA),
                        image: const AssetImage('assets/images/menu/pogaca.png', ),
                        label: 'Poğaça',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFE0F7FA),
                        image: const AssetImage('assets/images/menu/pogaca.png', ),
                        label: 'Poğaça',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFE0F7FA),
                        image: const AssetImage('assets/images/menu/pogaca.png', ),
                        label: 'Poğaça',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFE0F7FA),
                        image: const AssetImage('assets/images/menu/pogaca.png', ),
                        label: 'Poğaça',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: MenuTasarim(
                        color: const Color(0xFFE0F7FA),
                        image: const AssetImage('assets/images/menu/pogaca.png', ),
                        label: 'Poğaça',
                        onTap: () {},
                        subtitle: 'Fiyat Girin',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 60),
                child: InkWell(
                  onTap: () {
                  },
                  child: Container(
                    height: 65,
                    width: 370,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.orange,
                    ),
                    child: const Center(
                      child: Text(
                        'QR Kod Oluştur',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
