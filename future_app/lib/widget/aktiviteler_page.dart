import 'package:flutter/material.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';

class AktivitelerPage extends StatefulWidget {
  const AktivitelerPage({super.key});

  @override
  State<AktivitelerPage> createState() => _AktivitelerPageState();
}

class _AktivitelerPageState extends State<AktivitelerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 0, top: 50, right: 40, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                    width: 45,
                    height: 45,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 3, bottom: 3),

                    child: const Center(
                      child: Icon(
                        ADIcon.arrowleft_4,
                        color: Sabitler.anaRenk,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      "AKTİVİTELER",
                      textAlign: TextAlign.center,
                      style: TextStyle1.h5BoldBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 256,
                    height: 160,
                    decoration: BoxDecoration(
                      color: const Color(0XFFC4E8FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 20, bottom: 13),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Sabitler2.aktiviteBisiklet,
                                style: TextStyle1.body1BoldBlackk,
                              ),
                              Text(
                                Sabitler2.aktiviteBisiklet1,
                                style: TextStyle1.body1BoldBlackk,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    ADIcon.timecircle,
                                    size: 12,
                                  ),
                                  Text("15 min"),
                                  Icon(
                                    ADIcon.fire,
                                    size: 12,
                                  ),
                                  Text("346 kcal")
                                ],
                              ),
                            ],
                          ),
                          const Image(
                            image: AssetImage(
                                "assets/images/aktivite/spinning.png"),
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
