import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AktiviteDetayPage extends StatefulWidget {
  const AktiviteDetayPage({super.key});

  @override
  State<AktiviteDetayPage> createState() => _AktiviteDetayPageState();
}

class _AktiviteDetayPageState extends State<AktiviteDetayPage> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(36.86631598257398, 30.640283225093725);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
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
                              "assets/images/aktivite/yoga-detay.jpg"),
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
                              "assets/images/aktivite/yoga-detay-2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  //4th Image of Slider
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 520.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
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
              aktiviteBanner(),
            ],
          ),
          aktiviteBaslik(),
          aktiviteIletisim(),
          Container(
            margin: const EdgeInsets.only(left: 16, top: 16),
            child: Text(
              "Konum",
              style: TextStyle1.body1MediumBlack,
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
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
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
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Padding aktiviteIletisim() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "İletişim",
            style: TextStyle1.body1MediumBlack,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                children: [
                  Container(
                    width: 155,
                    decoration: BoxDecoration(
                      color: Sabitler.anaRenk,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Sabitler.text,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                ADIcon.call,
                                color: Sabitler.textBlack,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 13.0, bottom: 12),
                            child: Text(
                              "089-879-930",
                              style: TextStyle1.body1Light,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 155,
                      decoration: BoxDecoration(
                        color: Sabitler.ikinciRenk,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Sabitler.text,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(
                                  ADIcon.work,
                                  color: Sabitler.textBlack,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 13.0, bottom: 12),
                              child: Text(
                                "www.arenyazilim.com",
                                style: TextStyle1.body1Light,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding aktiviteBaslik() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Sabitler2.aktiviteDetayBaslik,
            style: TextStyle1.body1MediumBlack,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              Sabitler2.aktiviteDetayAciklama,
              style: TextStyle1.captionLightGrey,
            ),
          ),
        ],
      ),
    );
  }

  Center aktiviteBanner() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 440.0),
        child: Container(
          alignment: Alignment.topLeft,
          height: 150,
          width: 290,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0XFFC4E8FF),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  width: 80,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/aktivite/yoga-detay-3.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.0, left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Sabitler2.aktiviteDetayBannerBaslik,
                      style: TextStyle1.captionBoldBlack,
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        Sabitler2.aktiviteDetayBannerAciklama1,
                        style: TextStyle1.captionLightGrey,
                      ),
                    ),
                    Text(
                      Sabitler2.aktiviteDetayBannerAciklama2,
                      style: TextStyle1.captionLightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21.0),
                      child: Row(
                        children: [
                          Icon(
                            ADIcon.star,
                            color: Sabitler.ikinciRenk,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Text(
                              "4.8",
                              style: TextStyle1.captionBoldBlack,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
