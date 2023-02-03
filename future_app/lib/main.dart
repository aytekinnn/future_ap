import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/route.dart';
import 'package:future_app/widget/hizmetler_page.dart';
import 'widget/anasayfa_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int secilenMenuItem = 0;

  late List<Widget> tumSayfalar;

  late HomePage sayfaAna;

  late hizmetlerPage sayfaHizmet;

  @override
  void initState() {
    super.initState();
    sayfaAna = const HomePage();
    sayfaHizmet = const hizmetlerPage();
    tumSayfalar = [sayfaAna, sayfaHizmet];
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Future App",
      theme: ThemeData(primaryColor: Sabitler.text),
      onGenerateRoute: RouteGenerator.routeGenerator,
      //First Screen of Slider App
      home: Scaffold(
        extendBody: true,
        body: secilenMenuItem <= tumSayfalar.length - 1
            ? tumSayfalar[secilenMenuItem]
            : tumSayfalar[0],
        bottomNavigationBar: bottomNavigaitonBar(),
      ),
    );
  }

  ClipRRect bottomNavigaitonBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Sabitler.anaRenk,
        selectedLabelStyle: TextStyle1.navigationBar,
        unselectedLabelStyle: TextStyle1.unselectedNavigationBar,
        unselectedItemColor: Sabitler.text,
        selectedItemColor: Sabitler.ikinciHoverRenk,
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 25),
        type: BottomNavigationBarType.fixed,
        currentIndex: secilenMenuItem,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(ADIcon.home),
            label: TextStyle1.menuAna,
          ),
          BottomNavigationBarItem(
            icon: Icon(ADIcon.category),
            label: TextStyle1.menuHizmet,
          ),
          BottomNavigationBarItem(
            icon: Icon(ADIcon.vector),
            label: TextStyle1.menuFirsat,
          ),
          BottomNavigationBarItem(
            icon: Icon(ADIcon.profile),
            label: TextStyle1.menuHesap,
          ),
        ],
      ),
    );
  }
}
