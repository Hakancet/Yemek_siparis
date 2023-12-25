import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 8),
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.purple[100],
                          child: Icon(Icons.person , color: Colors.white, size: 30,),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('Servet Törer' , style: GoogleFonts.poppins(color: Colors.white ,fontSize: 20),),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 15,
                endIndent: 70,
                indent: 10,
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_month, color: Colors.white,),
                      const SizedBox(width: 10,),
                      Text('Rezervasyonlarım' ,style: GoogleFonts.poppins(color: Colors.white))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.apartment, color: Colors.white,),
                      const SizedBox(width: 10,),
                      Text('Hakkımızda' ,style: GoogleFonts.poppins(color: Colors.white))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.phone, color: Colors.white,),
                      const SizedBox(width: 10,),
                      Text('İletişim' ,style: GoogleFonts.poppins(color: Colors.white))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(FluentIcons.communication_24_regular, color: Colors.white,),
                      const SizedBox(width: 10,),
                      Text('Destek' ,style: GoogleFonts.poppins(color: Colors.white))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(FluentIcons.settings_24_regular, color: Colors.white,),
                      const SizedBox(width: 10,),
                      Text('Ayarlar' ,style: GoogleFonts.poppins(color: Colors.white))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ) ,
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.logout, color: Colors.white,),
                      const SizedBox(width: 10,),
                      Text('Çıkış Yap' ,style: GoogleFonts.poppins(color: Colors.white))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
