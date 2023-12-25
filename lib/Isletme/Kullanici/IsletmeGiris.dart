import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekkaktus/Isletme/IsletmeBar.dart';
import 'package:yemekkaktus/Isletme/Kullanici/IsletmeKayit.dart';

class IsletmeGiris extends StatefulWidget {
  const IsletmeGiris({Key? key}) : super(key: key);

  @override
  State<IsletmeGiris> createState() => _IsletmeGirisState();
}

class _IsletmeGirisState extends State<IsletmeGiris> {
  @override
  Widget build(BuildContext context) {
    TextEditingController telefonController = TextEditingController();
    TextEditingController sifreController = TextEditingController();
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 58),
                  child: Row(
                    children: [
                      Text(
                        'Merhaba, lütfen ',
                        style: GoogleFonts.poppins(fontSize: 20),
                      ),
                      Text(
                        ' giriş',
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.purpleAccent),
                      ),
                      Text(
                        ' yapın',
                        style: GoogleFonts.poppins(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: TextFormField(
                    controller: telefonController,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Telefon',
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: ' örn. 0555 555 555',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: TextFormField(
                    controller: sifreController,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Şifre',
                      hintText: 'Şifre',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 11, horizontal: 19),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.lock,
                        color: Colors.orange,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Şifrenizi Unuttunuz Mu?',
                            style: GoogleFonts.poppins(color: Colors.black),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => IsletmeBar()));
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
                          'Giriş Yap',
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Column(
                  children: [
                    Text(
                      'Hemen Bir İşletme Hesabı Açın?',
                      style:
                      GoogleFonts.poppins(color: Colors.black54, fontSize: 13),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> IsletmeKayit()));
                    }, child: Text('Kayıt Ol', style: GoogleFonts.poppins(),))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
