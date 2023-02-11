import 'package:flutter/material.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/model/restoran.dart';

class RestoranItem extends StatelessWidget {
  final Restoran listelenenRestoran;
  const RestoranItem({required this.listelenenRestoran, Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: listelenenRestoran.restoranResim,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(listelenenRestoran.restoranResim),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9.0, bottom: 25),
            child: Column(
              children: [
                Text(
                  listelenenRestoran.restoranAdi,
                  style: TextStyle1.body1BoldBlack,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  listelenenRestoran.restoranAciklama,
                  style: TextStyle1.captionLightGrey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
