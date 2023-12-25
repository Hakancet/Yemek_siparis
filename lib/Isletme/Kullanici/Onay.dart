import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekkaktus/Isletme/Kullanici/IsletmeGiris.dart';

class Onay extends StatefulWidget {
  const Onay({Key? key}) : super(key: key);

  @override
  State<Onay> createState() => _OnayState();
}

class _OnayState extends State<Onay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset(
                    'assets/images/onay.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width / 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'İşyeriniz Başarılıyla Kaydoldu ',
                    style: GoogleFonts.poppins(fontSize: 22 , color: Colors.purple[300]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                  child: Text(
                    'Uygulamamıza kaydolduğunuz için teşekküler,\n İşyerinizi restoranlar sayfasında görebilrisiniz ',
                    style: GoogleFonts.poppins(fontSize: 16 , color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IsletmeGiris()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 6),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Giriş',
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
