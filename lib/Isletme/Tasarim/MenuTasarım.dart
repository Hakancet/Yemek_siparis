import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekkaktus/Isletme/Tasarim/MenuDetay.dart';

class MenuTasarim extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function onTap;
  final double size;
  final String subtitle;
  final Color color;
  const MenuTasarim({
    required this.color,
    required this.subtitle,
    required this.image,
    required this.label,
    required this.onTap,
    this.size = 170,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> MenuDetay()));
      },
      child: Container(
        width: 190,
        height: 280,
        child: Column(
          children: [
            Card(
              color: color,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(5)),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image(
                        image: image,
                        height: size,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      label,
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3 ,horizontal: 3),
                    child: Text( subtitle , style: GoogleFonts.poppins(color: Colors.grey ,),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
