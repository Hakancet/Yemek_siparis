import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:yemekkaktus/Zoom/Sayfa.dart';
import 'package:yemekkaktus/Zoom/MenuPage.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: Colors.deepPurple,
      controller: zoomDrawerController,
      menuScreen: const Menu(),
      mainScreen: Scaffold(
        body: const Sayfa(),
      ),
      showShadow: true,
      style: DrawerStyle.defaultStyle,
      angle: -20,
      isRtl: false,
    );
  }
}
