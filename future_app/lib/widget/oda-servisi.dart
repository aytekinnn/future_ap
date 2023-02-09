import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';


class OdaServisiPage extends StatefulWidget {
  const OdaServisiPage({super.key});

  @override
  State<OdaServisiPage> createState() => _OdaServisiPageState();
}

class _OdaServisiPageState extends State<OdaServisiPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              //1st Image of Slider
              Container(
                width: screenWidth,
                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/aktivite/yoga-detay.jpg"),
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
            padding: const EdgeInsets.only(top: 49.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Bu servisi kullanabilmek için",
                    style: TextStyle1.body1Regular,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9.0),
                    child: Text(
                      "giriş yapmanız gerekmektedir.",
                      style: TextStyle1.body1Regular,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Sabitler.anaRenk,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            padding: const EdgeInsets.only(left: 30, right: 30),
                          ),
                          onPressed: () {},
                          child: Text(Sabitler2.odaServisiButon1,
                              style: TextStyle1.body1MediumWhite),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Sabitler.anaRenk),
                              backgroundColor: Sabitler.text,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                            ),
                            onPressed: () {},
                            child: Text(Sabitler2.odaServisiButon2,
                                style: TextStyle1.body1MediumBlue),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
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
