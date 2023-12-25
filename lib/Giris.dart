import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekkaktus/Isletme/Kullanici/IsletmeGiris.dart';
import 'package:yemekkaktus/Kullanici/login.dart';

class Giris extends StatefulWidget {
  const Giris({Key? key}) : super(key: key);

  @override
  State<Giris> createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Image.asset('assets/images/kaktus.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width / 1.2),
                ),
                Column(
                  children: [
                    DefaultTextStyle(
                      style: GoogleFonts.poppins(color: Colors.black , fontSize: 25),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('Yemek Uygulaması' ),
                          TypewriterAnimatedText('Kaliteli, Hızlı Hizmet'),
                          TypewriterAnimatedText('En Uygun Fiyatlı Yemekler'),
                          TypewriterAnimatedText('En İyi Restoranlar'),
                        ],
                        onTap: () {
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      child: Container(
                        height: 65,
                        width: 370,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.orange,
                        ),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13),
                              child: Icon(Icons.person , size: 35, color: Colors.white,),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                              child: Text(
                                'Müşteri Giriş',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const IsletmeGiris()),
                        );
                      },
                      child: Container(
                        height: 65,
                        width: 370,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.orange,
                        ),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Icon(Icons.storefront , size: 35, color: Colors.white,),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                              child: Text(
                                'İşletme Giriş',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
