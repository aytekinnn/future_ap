import 'package:flutter/material.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/model/firsat.dart';
import 'package:future_app/model/firsat_item.dart';

class firsatlarPage extends StatelessWidget {
  late List<Firsat> tumFirsat;

  firsatlarPage() {
    tumFirsat = veriKaynagiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // sliderWidget(),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  Sabitler2.firsatlarAna,
                  textAlign: TextAlign.center,
                  style: TextStyle1.hizmetTitle,
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return FirsatItem(listelenenFirsat: tumFirsat[index]);
              },
              itemCount: tumFirsat.length,
            ),
          ),
        ],
      ),
    );
  }

  List<Firsat> veriKaynagiHazirla() {
    List<Firsat> gecici = [];
    for (var i = 0; i < 4; i++) {
      var firsatAdi = Sabitler2.otelFirsatAdi[i];
      var firsatAciklama = Sabitler2.otelFirsatlarAciklama[i];
      var firsatResim = Sabitler2.otelFirsatResim[i];
      Firsat eklenecekFirsat = Firsat(firsatAdi, firsatAciklama, firsatResim);
      gecici.add(eklenecekFirsat);
    }
    return gecici;
  }
}

class sliderWidget extends StatelessWidget {
  const sliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          slider1(context),
          slider2(context),
          slider3(context),
        ],
      ),
    );
  }

  Container slider3(BuildContext context) {
    return Container(
      width: 330,
      height: 350,
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/firsatDetayPage');
            },
            child: Container(
              padding: const EdgeInsets.only(left: 0, right: 20, top: 38),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/images/firsatlar/firsat-3.jpg',
                    width: double.infinity, fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            top: 45,
            left: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: 70,
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 17, right: 17),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Sabitler.ikinciHoverRenk,
              ),
              child: Text(
                Sabitler2.firsatYeni,
                textAlign: TextAlign.center,
                style: TextStyle1.hizmetBannerStyle,
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            bottom: 25,
            left: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: 190,
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 0, right: 17),
              child: Text(
                Sabitler2.firsatBaslik,
                textAlign: TextAlign.left,
                style: TextStyle1.hizmetBannerOdaStyle,
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            bottom: 7,
            left: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: double.maxFinite,
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 0, right: 17),
              child: Text(
                Sabitler2.firsatAciklama,
                textAlign: TextAlign.left,
                style: TextStyle1.hizmetBannerOdaDetayStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container slider2(BuildContext context) {
    return Container(
      width: 330,
      height: 350,
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/firsatDetayPage');
            },
            child: Container(
              padding: const EdgeInsets.only(left: 0, right: 20, top: 38),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/images/firsatlar/firsat-2.jpg',
                    width: double.infinity, fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            top: 45,
            left: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: 90,
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 17, right: 17),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: Text(
                Sabitler2.firsatIndirim,
                textAlign: TextAlign.center,
                style: TextStyle1.hizmetBannerStyle,
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            bottom: 25,
            left: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: 190,
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 0, right: 17),
              child: Text(
                Sabitler2.firsatBaslik,
                textAlign: TextAlign.left,
                style: TextStyle1.hizmetBannerOdaStyle,
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            bottom: 7,
            left: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: double.maxFinite,
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 0, right: 17),
              child: Text(
                Sabitler2.firsatAciklama,
                textAlign: TextAlign.left,
                style: TextStyle1.hizmetBannerOdaDetayStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container slider1(BuildContext context) {
    return Container(
      width: 330,
      height: 350,
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/firsatDetayPage');
            },
            child: Container(
              padding: const EdgeInsets.only(left: 4, right: 20, top: 38),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/images/firsatlar/firsat-1.jpg',
                    width: double.infinity, fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            top: 45,
            left: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: 105,
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 17, right: 17),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Sabitler.anaRenk,
              ),
              child: Text(
                Sabitler2.hizmetBanner,
                textAlign: TextAlign.center,
                style: TextStyle1.hizmetBannerStyle,
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            bottom: 25,
            left: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: 190,
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 0, right: 17),
              child: Text(
                Sabitler2.firsatBaslik,
                textAlign: TextAlign.left,
                style: TextStyle1.hizmetBannerOdaStyle,
              ),
            ),
          ),
          Positioned(
            // The Positioned widget is used to position the text inside the Stack widget
            bottom: 7,
            left: 10,

            child: Container(
              // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
              width: double.maxFinite,
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 0, right: 17),
              child: Text(
                Sabitler2.firsatAciklama,
                textAlign: TextAlign.left,
                style: TextStyle1.hizmetBannerOdaDetayStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
