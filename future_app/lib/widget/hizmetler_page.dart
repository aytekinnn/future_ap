import 'package:flutter/material.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';

class hizmetlerPage extends StatefulWidget {
  const hizmetlerPage({super.key});

  @override
  State<hizmetlerPage> createState() => _hizmetlerPageState();
}

class _hizmetlerPageState extends State<hizmetlerPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 38),
                child: Text(
                  Sabitler2.hizmetlerAna,
                  textAlign: TextAlign.center,
                  style: TextStyle1.hizmetTitle,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  Sabitler2.hizmetSub,
                  textAlign: TextAlign.center,
                  style: TextStyle1.hizmetSubtitle,
                ),
              ),
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 38),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                            'assets/images/hizmetler/room-service.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    top: 45,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 120,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 17, right: 17),
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
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 190,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerOda,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaStyle,
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    bottom: 7,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: double.maxFinite,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerOdaDetay,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaDetayStyle,
                      ),
                    ),
                  ),
                ],
              ),

              // 2. Hizmet
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                            'assets/images/hizmetler/dry-cleaner.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    top: 22,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: double.maxFinite,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 17, right: 17),
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
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 350,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerKuru,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaStyle,
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    bottom: 7,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 360,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerKuruDetay,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaDetayStyle,
                      ),
                    ),
                  ),
                ],
              ),

              // 3. Hizmet
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                            'assets/images/hizmetler/rent-a-car.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    top: 22,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 120,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 17, right: 17),
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
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 190,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerArac,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaStyle,
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    bottom: 7,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 360,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerAracDetay,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaDetayStyle,
                      ),
                    ),
                  ),
                ],
              ),

              // 4. Hizmet
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset('assets/images/hizmetler/porter.jpg',
                            width: double.infinity, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    top: 22,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 120,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 17, right: 17),
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
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 190,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerPorter,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaStyle,
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    bottom: 7,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 360,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerPorterDetay,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaDetayStyle,
                      ),
                    ),
                  ),
                ],
              ),

              // 5. Hizmet
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 16, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                            'assets/images/hizmetler/special.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    top: 22,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 120,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 17, right: 17),
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
                    bottom: 45,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 190,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerOzel,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaStyle,
                      ),
                    ),
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    bottom: 27,
                    left: 25,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: 360,
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, left: 0, right: 17),
                      child: Text(
                        Sabitler2.hizmetBannerOzelDetay,
                        textAlign: TextAlign.left,
                        style: TextStyle1.hizmetBannerOdaDetayStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
