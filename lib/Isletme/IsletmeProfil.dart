import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yemekkaktus/Isletme/Kullanici/IsletmeGiris.dart';

class IsletmeProfil extends StatefulWidget {
  const IsletmeProfil({Key? key}) : super(key: key);

  @override
  State<IsletmeProfil> createState() => _IsletmeProfilState();
}

class _IsletmeProfilState extends State<IsletmeProfil> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        centerTitle: true,
        title: Text('İşletmem' , style: GoogleFonts.poppins(
            fontSize: 25, fontWeight: FontWeight.w500),),
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5 ,horizontal: 13),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0XFFF3E5F5),
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => IsletmeGiris()));
                  },
                  icon: Icon(Icons.logout)),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 180,
                  child: PageView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/restoran.jpg'),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/ıcmekan.jpg'),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/mekanınsan.jpg'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: const ExpandingDotsEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 9.0,
                        dotHeight: 9.0,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 1.5,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.indigo),
                  ),
                ),
                Text(
                  'Yeni Restoran',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 22),
                ),
                Text(
                  'deneme@gmail.com',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.grey),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'İşletme Bilgileri',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2 ,horizontal: 12),
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'İşletme Adı :',
                                  style: GoogleFonts.poppins(fontSize: 15 , color: Colors.grey[600]),
                                ),
                                Text(
                                  'Yeni Restoran',
                                  style: GoogleFonts.poppins(fontSize: 18 , color: Colors.black ,fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'İşletme Adresi :',
                                  style: GoogleFonts.poppins(fontSize: 15 , color: Colors.grey[600]),
                                ),
                                Text(
                                  'Yeni mahalle, yeni sokak, no:4 ',
                                  style: GoogleFonts.poppins(fontSize: 15 , color: Colors.black ,fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'İşletme Telefon :',
                                  style: GoogleFonts.poppins(fontSize: 15 , color: Colors.grey[600]),
                                ),
                                Text(
                                  '0555 555 55 55',
                                  style: GoogleFonts.poppins(fontSize: 18 , color: Colors.black ,fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'İşletme Adresi :',
                                  style: GoogleFonts.poppins(fontSize: 15 , color: Colors.grey[600]),
                                ),
                                Text(
                                  'Şehitkamil/Gaziantep',
                                  style: GoogleFonts.poppins(fontSize: 17 , color: Colors.black ,fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:4),
                              child: InkWell(
                                onTap: (){},
                                child: Container(
                                  height: 50,
                                  width: 175,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                       'Güncelle',
                                       style: GoogleFonts.poppins(
                                         fontSize: 18,
                                         color: Colors.white,
                                       ),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
