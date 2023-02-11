import 'package:flutter/material.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/model/restoran.dart';
import 'package:future_app/model/restoran_item.dart';

import '../constants/renkler.dart';

class RestoranBarlarPage extends StatelessWidget {
  late List<Restoran> tumRestoran;
  RestoranBarlarPage() {
    tumRestoran = veriKaynagiHazirla();
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
                      "RESTORAN & BARLAR",
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
                return RestoranItem(listelenenRestoran: tumRestoran[index]);
              },
              itemCount: tumRestoran.length,
            ),
          ),
        ],
      ),
    );
  }

  List<Restoran> veriKaynagiHazirla() {
    List<Restoran> gecici = [];
    for (var i = 0; i < 3; i++) {
      var restoranAdi = Sabitler2.otelRestoranlar[i];
      var restoranAciklama = Sabitler2.otelRestoranAciklama[i];
      var restoranResim = Sabitler2.otelRestoranResim[i];
      Restoran eklenecekRestoran =
          Restoran(restoranAdi, restoranAciklama, restoranResim);
      gecici.add(eklenecekRestoran);
    }
    return gecici;
  }
}
