import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemekkaktus/Tasarim/YemekDetay.dart';

class IsletmeYemek extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function onTap;
  final double size;
  final String point;
  final String kalori;
  final String gram;
  const IsletmeYemek({
    required this.point,
    required this.gram,
    required this.kalori,
    required this.image,
    required this.label,
    required this.onTap,
    this.size = 170,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> YemekDetay()));
      },
      child: Container(
        width: 190,
        height: 280,
        child: Column(
          children: [
            Card(
              color: Colors.blue[100],
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
                        fit: BoxFit.cover,
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
                  Row(
                    children: [
                      Icon(Icons.star , color: Colors.yellow,),
                      Text(point , style: GoogleFonts.poppins(),),
                      Text('/ '),
                      Text(  gram , style: GoogleFonts.poppins(color: Colors.grey ,),),
                      Text('/ '),
                      Text(  kalori , style: GoogleFonts.poppins(color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
