import 'package:flutter/material.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/model/oda_item.dart';

import '../constants/renkler.dart';
import '../model/oda.dart';

class OdalarPage extends StatelessWidget {
  late List<Oda> tumOdalar;
  OdalarPage() {
    tumOdalar = veriKaynagiHazirla();
  }

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
                      "ODALAR",
                      textAlign: TextAlign.center,
                      style: TextStyle1.h5BoldBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return OdaItem(listelenenOda: tumOdalar[index]);
              },
              itemCount: tumOdalar.length,
            ),
          ),
        ],
      ),
    );
  }

  List<Oda> veriKaynagiHazirla() {
    List<Oda> gecici = [];
    for (var i = 0; i < 3; i++) {
      var odaAdi = Sabitler2.otelOdalar[i];
      var odaResim = Sabitler2.otelOdalarResim[i];
      Oda eklenecekOda = Oda(odaAdi, odaResim);
      gecici.add(eklenecekOda);
    }
    return gecici;
  }
}
