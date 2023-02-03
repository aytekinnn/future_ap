import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/text_style.dart';
import '../constants/renkler.dart';
import '../constants/text.dart';

class odaDetay extends StatefulWidget {
  var imgPath;
  var imgAdd;
  get getImgPath => this.imgPath;

  get getImgAdd => this.imgAdd;

  odaDetay({this.imgPath, this.imgAdd});

  void main() {
    if (imgPath == 'assets/images/odalar/oda-1/1.jpg') {
      List<dynamic> sliderListe = List.filled(3, 0, growable: false);

      sliderListe[0] = "assets/images/odalar/oda-1/1.jpg";
      sliderListe[1] = "assets/images/odalar/oda-1/2.jpg";
      sliderListe[2] = "assets/images/odalar/oda-1/3.jpg";
    } else if (imgPath == 'assets/images/odalar/oda-2/1.jpg') {
      List<dynamic> sliderListe = List.filled(3, 0, growable: false);

      sliderListe[0] = "assets/images/odalar/oda-2/1.jpg";
      sliderListe[1] = "assets/images/odalar/oda-2/2.jpg";
      sliderListe[2] = "assets/images/odalar/oda-2/3.jpg";
    } else if (imgPath == 'assets/images/odalar/oda-3/1.jpg') {
      List<dynamic> sliderListe = List.filled(3, 0, growable: false);

      sliderListe[0] = "assets/images/odalar/oda-3/1.jpg";
      sliderListe[1] = "assets/images/odalar/oda-3/2.jpg";
      sliderListe[2] = "assets/images/odalar/oda-3/3.jpg";
    } else {
      const Text("Geçersiz Sayfa");
    }
  }

  @override
  State<odaDetay> createState() => _odaDetayState();
}

class _odaDetayState extends State<odaDetay> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.imgPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/otelBilgisi/rixos-otel-bilgisi-2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/otelBilgisi/rixos-otel-bilgisi-3.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    //4th Image of Slider
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 540.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 500),
                    viewportFraction: 1,
                  ),
                ),
                Positioned(
                  // The Positioned widget is used to position the text inside the Stack widget
                  top: 30,
                  left: 25,

                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 45,
                      height: 45,
                      padding: const EdgeInsets.only(top: 3, bottom: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Sabitler.anaRenk,
                      ),
                      child: const Center(
                        child: Icon(
                          ADIcon.arrowleft_4,
                          color: Sabitler.text,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Sabitler.text),
                    width: screenWidth,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                widget.imgAdd,
                                style: TextStyle1.body1BoldBlack,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    ADIcon.star,
                                    size: 10,
                                    color: Sabitler.anaRenk,
                                  ),
                                  Icon(
                                    ADIcon.star,
                                    size: 10,
                                    color: Sabitler.anaRenk,
                                  ),
                                  Icon(
                                    ADIcon.star,
                                    size: 10,
                                    color: Sabitler.anaRenk,
                                  ),
                                  Icon(
                                    ADIcon.star,
                                    size: 10,
                                    color: Sabitler.anaRenk,
                                  ),
                                  Icon(
                                    ADIcon.star,
                                    size: 10,
                                    color: Sabitler.anaRenk,
                                  ),
                                ],
                              )
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Sabitler.anaRenk,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                            ),
                            onPressed: () {},
                            child: Text(Sabitler2.bilgiButon,
                                style: TextStyle1.body1MediumWhite),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bizimleIiletisimeGecin(),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "ODA OLANAKLARI",
                style: TextStyle1.captionMediumBlack,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            listSporBaslik(),
            listSpor(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Row listSporBaslik() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: Text(
            "DETAY",
            style: TextStyle1.captionMediumBlack,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 0, right: 16),
            child: const Divider(
              indent: 20.0,
              endIndent: 10.0,
              thickness: 1,
              color: Sabitler.anaRenk,
            ),
          ),
        ),
      ],
    );
  }

  Padding listSpor() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Voleybol",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Plaj Voleybolu",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Bilardo",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Su Kaydırağı",
                style: TextStyle1.ovelineLightBlack,
              ),
            ],
          ),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Masa Tenisi",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Fitness Merkezi",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Dart",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Aerobik",
                style: TextStyle1.ovelineLightBlack,
              ),
            ],
          ),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kapalı Havuz",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Açık Havuz",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Tenis Sahası",
                style: TextStyle1.ovelineLightBlack,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding bizimleIiletisimeGecin() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 9,
          ),
          Text(
            Sabitler2.odaIletisimAciklama,
            style: TextStyle1.ovelineLightGrey,
          ),
        ],
      ),
    );
  }
}
