import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/text_style.dart';
import '../constants/renkler.dart';
import '../constants/text.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class otelBilgisi extends StatefulWidget {
  @override
  State<otelBilgisi> createState() => _otelBilgisiState();
}

class _otelBilgisiState extends State<otelBilgisi> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(36.86631598257398, 30.640283225093725);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/otelBilgisi/rixos-otel-bilgisi.jpg"),
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
                    height: 440.0,
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
                                Sabitler2.bilgiBaslik,
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
              height: 26,
            ),
            const Divider(
              color: Sabitler.subtitle,
              height: 25,
              thickness: 1,
              indent: 16,
              endIndent: 16,
            ),
            otelOlanakHizmetler(),
            Icons(),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "TESİS OLANAKLARI",
                style: TextStyle1.captionMediumBlack,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            listSporBaslik(),
            listSpor(),
            const SizedBox(
              height: 20,
            ),
            listOtelBaslik(),
            listOtel(),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16),
              child: Text(
                "Konum",
                style: TextStyle1.captionMediumBlack,
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 12,
                  ),
                  markers: {
                    Marker(
                      markerId: MarkerId("marker_1"),
                      position: _center,
                      infoWindow: InfoWindow(
                        title: "Aytekin Hotel",
                      ),
                    ),
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: FloatingActionButton.extended(
                onPressed: () {
                  mapController.animateCamera(
                    CameraUpdate.newCameraPosition(
                      CameraPosition(
                        target: _center,
                        zoom: 17,
                      ),
                    ),
                  );
                },
                label: Text("Konumu Göster"),
                icon: Icon(ADIcon.location),
              ),
            ),
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
            "Spor",
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

  Row listOtelBaslik() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: Text(
            "Otel Olanakları",
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

  Padding listOtel() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Açık Renstoran",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Bar",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Aquapark",
                style: TextStyle1.ovelineLightBlack,
              ),
              Text(
                "Otopark",
                style: TextStyle1.ovelineLightBlack,
              ),
            ],
          ),
        ],
      ),
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

  Padding Icons() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Sabitler.anaRenk),
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 8, right: 16, top: 12, bottom: 12),
                child: Icon(
                  ADIcon.adduser,
                  color: Sabitler.anaRenk,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Sabitler.anaRenk),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
                  child: Icon(
                    ADIcon.emojionemonotonetennis,
                    color: Sabitler.anaRenk,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Sabitler.anaRenk),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
                  child: Icon(
                    ADIcon.iconoirgym,
                    color: Sabitler.anaRenk,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Sabitler.anaRenk),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
                  child: Icon(
                    ADIcon.fluentmdl2eatdrink,
                    color: Sabitler.anaRenk,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Sabitler.anaRenk),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
                  child: Icon(
                    ADIcon.icbaselinewifi,
                    color: Sabitler.anaRenk,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Sabitler.anaRenk),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
                  child: Icon(
                    ADIcon.materialsymbolsphoneintalkoutline,
                    color: Sabitler.anaRenk,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding bizimleIiletisimeGecin() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Sabitler2.bilgiletisimAciklama,
            style: TextStyle1.ovelineLightGrey,
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            Sabitler2.bilgiletisimAciklama1,
            style: TextStyle1.ovelineLightGrey,
          ),
          const SizedBox(
            height: 19,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Telefon",
                    style: TextStyle1.ovelineMediumBlack,
                  ),
                  Text(
                    "+90 242 824 00 00",
                    style: TextStyle1.ovelineMediumBlackCizgi,
                  ),
                ],
              ),
              const SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "E-Mail",
                    style: TextStyle1.ovelineMediumBlack,
                  ),
                  Text(
                    "aytekin@aytekin.com",
                    style: TextStyle1.ovelineMediumBlackCizgi,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding otelOlanakHizmetler() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Column(
        children: [
          Text(
            Sabitler2.bilgiOlanak,
            style: TextStyle1.captionMediumBlack,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            Sabitler2.bilgiOlanakAcikalama,
            style: TextStyle1.ovelineLightGrey,
          ),
        ],
      ),
    );
  }
}
