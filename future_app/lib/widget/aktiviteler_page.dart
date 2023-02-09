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
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 0, top: 20, right: 40, bottom: 10),
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
              aktiviteSlider(),
              aktiviteAciklama(),
              Padding(
                padding: const EdgeInsets.only(top: 19.0),
                child: Text(
                  "KATEGORİLER",
                  style: TextStyle1.h5MediumBlack,
                ),
              ),
              aktiviteKategori(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding aktiviteKategori() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFDCDCDC),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 12, bottom: 12),
                    child: Image(
                      image:
                          AssetImage("assets/images/aktivite/lotus-icon.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Yoga",
                  style: TextStyle1.captionLightBlack,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFDCDCDC),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 12, bottom: 12),
                      child: Image(
                        image:
                            AssetImage("assets/images/aktivite/yoga-icon.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Pilates",
                    style: TextStyle1.captionLightBlack,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFDCDCDC),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 12, bottom: 12),
                      child: Image(
                        image: AssetImage(
                            "assets/images/aktivite/boxing-icon.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Boks",
                    style: TextStyle1.captionLightBlack,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFDCDCDC),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 12, bottom: 12),
                      child: Image(
                        image: AssetImage(
                            "assets/images/aktivite/running-icon.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Cross Fit",
                    style: TextStyle1.captionLightBlack,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding aktiviteAciklama() {
    return Padding(
      padding: const EdgeInsets.only(top: 41, left: 16, right: 16),
      child: Column(
        children: [
          Text(
            Sabitler2.aktiviteBaslik,
            style: TextStyle1.h5MediumBlack,
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Text(
                  Sabitler2.aktiviteAciklama,
                  style: TextStyle1.captionLightGreyAciklama,
                ),
                Text(
                  Sabitler2.aktiviteAciklama1,
                  style: TextStyle1.captionLightGreyAciklama,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding aktiviteSlider() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 270,
              height: 160,
              decoration: BoxDecoration(
                color: const Color(0XFFC4E8FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, bottom: 13),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                ADIcon.timecircle,
                                size: 12,
                                color: Sabitler.subtitle,
                              ),
                              Text(
                                "15 min",
                                style: TextStyle1.ovelineMediumGrey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  ADIcon.fire,
                                  size: 12,
                                  color: Sabitler.subtitle,
                                ),
                              ),
                              Text("346 kcal",
                                  style: TextStyle1.ovelineMediumGrey)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Sabitler.text,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 25, right: 25),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/aktiviteDetayPage');
                            },
                            child: Row(
                              children: [
                                Text("DETAY",
                                    style: TextStyle1.body1MediumBlack),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    ADIcon.play,
                                    color: Sabitler.textBlack,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const Image(
                      image: AssetImage("assets/images/aktivite/spinning.png"),
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                width: 270,
                height: 160,
                decoration: BoxDecoration(
                  color: const Color(0XFFFFE8C6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, bottom: 13),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Sabitler2.aktiviteBoks,
                            style: TextStyle1.body1BoldBlackk,
                          ),
                          Text(
                            Sabitler2.aktiviteBisiklet1,
                            style: TextStyle1.body1BoldBlackk,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  ADIcon.timecircle,
                                  size: 12,
                                  color: Sabitler.subtitle,
                                ),
                                Text(
                                  "15 min",
                                  style: TextStyle1.ovelineMediumGrey,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(
                                    ADIcon.fire,
                                    size: 12,
                                    color: Sabitler.subtitle,
                                  ),
                                ),
                                Text("346 kcal",
                                    style: TextStyle1.ovelineMediumGrey)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Sabitler.text,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                padding:
                                    const EdgeInsets.only(left: 25, right: 25),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, '/aktiviteDetayPage');
                              },
                              child: Row(
                                children: [
                                  Text("DETAY",
                                      style: TextStyle1.body1MediumBlack),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      ADIcon.play,
                                      color: Sabitler.textBlack,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: const Image(
                          image: AssetImage("assets/images/aktivite/boks.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                width: 270,
                height: 160,
                decoration: BoxDecoration(
                  color: const Color(0XFFF4DCFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, bottom: 13),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Sabitler2.aktivitePilates,
                            style: TextStyle1.body1BoldBlackk,
                          ),
                          Text(
                            Sabitler2.aktiviteBisiklet1,
                            style: TextStyle1.body1BoldBlackk,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  ADIcon.timecircle,
                                  size: 12,
                                  color: Sabitler.subtitle,
                                ),
                                Text(
                                  "15 min",
                                  style: TextStyle1.ovelineMediumGrey,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(
                                    ADIcon.fire,
                                    size: 12,
                                    color: Sabitler.subtitle,
                                  ),
                                ),
                                Text("346 kcal",
                                    style: TextStyle1.ovelineMediumGrey)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Sabitler.text,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                padding:
                                    const EdgeInsets.only(left: 25, right: 25),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, '/aktiviteDetayPage');
                              },
                              child: Row(
                                children: [
                                  Text("DETAY",
                                      style: TextStyle1.body1MediumBlack),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      ADIcon.play,
                                      color: Sabitler.textBlack,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 40),
                        child: const Image(
                          image:
                              AssetImage("assets/images/aktivite/pilates.png"),
                          width: 110,
                          fit: BoxFit.fill,
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
    );
  }
}
