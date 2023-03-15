import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:future_app/widget/aktivite_detay_page.dart';
import 'package:future_app/widget/aktiviteler_page.dart';
import 'package:future_app/widget/anasayfa_page.dart';
import 'package:future_app/widget/firsat_detay_page.dart';
import 'package:future_app/widget/firsatlar_page.dart';
import 'package:future_app/widget/hesap.dart';
import 'package:future_app/widget/oda-servisi.dart';
import 'package:future_app/widget/odalar_page.dart';
import 'package:future_app/widget/otelbilgisi_page.dart';
import 'package:future_app/widget/plaj_havuzlar_page.dart';
import 'package:future_app/widget/restoran_barlar_page.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(builder: (context) => const HomePage());
        } else {
          return MaterialPageRoute(builder: (context) => const HomePage());
        }

      case '/otelBilgisi':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(builder: (context) => otelBilgisi());
        } else {
          return MaterialPageRoute(builder: (context) => otelBilgisi());
        }

      case '/firsatlarPage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(builder: (context) => firsatlarPage());
        } else {
          return MaterialPageRoute(builder: (context) => firsatlarPage());
        }

      case '/hesapPage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(builder: (context) => const hesapPage());
        } else {
          return MaterialPageRoute(builder: (context) => const hesapPage());
        }

      case '/odalarPage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(builder: (context) => OdalarPage());
        } else {
          return MaterialPageRoute(builder: (context) => OdalarPage());
        }

      case '/restoranBarlarPage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(builder: (context) => RestoranBarlarPage());
        } else {
          return MaterialPageRoute(builder: (context) => RestoranBarlarPage());
        }

      case '/plajHavuzlarPage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(builder: (context) => PlajHavuzlarPage());
        } else {
          return MaterialPageRoute(builder: (context) => PlajHavuzlarPage());
        }

      case '/aktivitelerPage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
              builder: (context) => const AktivitelerPage());
        } else {
          return MaterialPageRoute(
              builder: (context) => const AktivitelerPage());
        }

      case '/aktiviteDetayPage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
              builder: (context) => const AktiviteDetayPage());
        } else {
          return MaterialPageRoute(
              builder: (context) => const AktiviteDetayPage());
        }

      case '/odaServisiPage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
              builder: (context) => const OdaServisiPage());
        } else {
          return MaterialPageRoute(
              builder: (context) => const OdaServisiPage());
        }

      case '/firsatDetayPage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
              builder: (context) => const FirsatDetayPage());
        } else {
          return MaterialPageRoute(
              builder: (context) => const FirsatDetayPage());
        }

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('404 EROR'),
            ),
          ),
        );
    }
  }
}
