import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekkaktus/Tasarim/YemekKart.dart';

class Arama extends StatefulWidget {
  const Arama({Key? key}) : super(key: key);

  @override
  State<Arama> createState() => _AramaState();
}

class _AramaState extends State<Arama> {
  TextEditingController aramaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        centerTitle: true,
        title: Text(
          'Ürünler',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.blueGrey,
                        cursorHeight: 20,
                        controller: aramaController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          hintText: 'Ürün Arayın',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Color(0xFFF5F5F5),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.orange,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Popüler Tercihler',
                        style: GoogleFonts.poppins(fontSize: 25),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),                         child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0XFFF5F5F5),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.swap_vert,
                              size: 27,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.egg_alt_outlined,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Kahvaltı',
                                style: GoogleFonts.poppins(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                FluentIcons.drink_coffee_24_filled,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Sıcak İçecekler',
                                style: GoogleFonts.poppins(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                FluentIcons.food_toast_24_regular,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Tost',
                                style: GoogleFonts.poppins(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                FluentIcons.food_chicken_leg_24_filled,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Tavuk',
                                style: GoogleFonts.poppins(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.kebab_dining,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Kebap',
                                style: GoogleFonts.poppins(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.lunch_dining_outlined,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Fast Food',
                                style: GoogleFonts.poppins(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                FluentIcons.bowl_salad_20_filled,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Salata',
                                style: GoogleFonts.poppins(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                FluentIcons.food_fish_24_regular,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Balık',
                                style: GoogleFonts.poppins(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                FluentIcons.drink_margarita_24_filled,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'İçecek',
                                style: GoogleFonts.poppins(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 12,
                color: Colors.grey[200],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'En Son Baktıkların',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: YemekKart(
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
                          child: YemekKart(
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: YemekKart(
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
                          child: YemekKart(
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: YemekKart(
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
                          child: YemekKart(
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
