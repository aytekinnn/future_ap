import 'package:flutter/material.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/model/plaj.dart';

class PlajItem extends StatelessWidget {
  final Plaj listelenenPlaj;
  const PlajItem({required this.listelenenPlaj, Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/images/plajlar/havuz.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9.0, bottom: 25),
            child: Column(
              children: [
                Text(
                  listelenenPlaj.plajAdi,
                  style: TextStyle1.body1BoldBlack,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  listelenenPlaj.plajAciklama,
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
