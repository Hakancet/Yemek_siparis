import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekkaktus/Kullanici/Kayit.dart';
import 'package:yemekkaktus/Tabbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'E-Mail',
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: 'örn. email@gmail.com',
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
                    controller: passwordController,
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
                  padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Bar()));
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
                      'Henüz hesabınız yok mu?',
                      style:
                          GoogleFonts.poppins(color: Colors.black54, fontSize: 13),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kayit()));
                    }, child: Text('Kayıt Ol', style: GoogleFonts.poppins(),))
                  ],
                ),
                const Divider(
                  height: 19,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text('Ya Da Bununla Oturum Açın' , style: GoogleFonts.poppins(),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: InkWell(
                            onTap: (){},
                            child: Image.asset('assets/images/google.png' , width: 40 , height: 40,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: InkWell(
                            onTap: (){},
                            child: Image.asset('assets/images/facebook.png' , width: 40 , height: 40,),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
