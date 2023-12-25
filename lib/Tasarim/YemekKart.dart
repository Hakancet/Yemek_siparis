import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:yemekkaktus/Tasarim/YemekDetay.dart';

class YemekKart extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function onTap;
  final double size;
  final String point;
  final String kalori;
  final String gram;
  const YemekKart({
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
              color: Colors.yellow[100],
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
                      Positioned(
                        top: 7,
                        right: 7,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: LikeButton(
                            size: 30,
                            circleColor: const CircleColor(
                              start: Color(0xff00ddff),
                              end: Color(0xff0099cc),
                            ),
                            bubblesColor: const BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.favorite,
                                color: isLiked ? Colors.redAccent : Colors.grey,
                                size: 30,
                              );
                            },
                            onTap: (bool isLiked) async {
                              bool result = !isLiked;
                              return result;
                            },
                          ),
                        ),
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
