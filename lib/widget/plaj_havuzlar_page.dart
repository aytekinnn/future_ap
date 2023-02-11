import 'package:flutter/material.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/model/plaj.dart';
import '../constants/renkler.dart';
import '../model/plaj_item.dart';

class PlajHavuzlarPage extends StatelessWidget {
  late List<Plaj> tumPlaj;
  PlajHavuzlarPage() {
    tumPlaj = veriKaynagiHazirla();
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
                      "PLAJLAR & HAVUZLAR",
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
                return PlajItem(listelenenPlaj: tumPlaj[index]);
              },
              itemCount: tumPlaj.length,
            ),
          ),
        ],
      ),
    );
  }

  List<Plaj> veriKaynagiHazirla() {
    List<Plaj> gecici = [];
    for (var i = 0; i < 3; i++) {
      var plajAdi = Sabitler2.otelPlajlar[i];
      var plajAciklama = Sabitler2.otelPlajlarAciklama[i];
      Plaj eklenecekPlaj = Plaj(plajAdi, plajAciklama);
      gecici.add(eklenecekPlaj);
    }
    return gecici;
  }
}
