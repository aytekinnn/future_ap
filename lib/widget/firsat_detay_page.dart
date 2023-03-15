import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';

class FirsatDetayPage extends StatefulWidget {
  const FirsatDetayPage({super.key});

  @override
  State<FirsatDetayPage> createState() => _FirsatDetayPageState();
}

class _FirsatDetayPageState extends State<FirsatDetayPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              //1st Image of Slider
              Container(
                width: screenWidth,
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/images/firsatlar/firsat-detay.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider

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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                Text(
                  Sabitler2.firsatDetayBaslik,
                  style: TextStyle1.h5BoldBlack,
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 16, right: 16),
                  child: Text(
                    Sabitler2.firsatDetay,
                    style: TextStyle1.captionLightBlack,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
