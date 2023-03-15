import 'package:flutter/material.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/model/firsat.dart';

class FirsatItem extends StatelessWidget {
  final Firsat listelenenFirsat;
  const FirsatItem({required this.listelenenFirsat, Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/firsatDetayPage");
            },
            child: Hero(
              tag: listelenenFirsat.firsatResim,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(listelenenFirsat.firsatResim),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9.0, bottom: 25),
            child: Column(
              children: [
                Text(
                  listelenenFirsat.firsatAdi,
                  style: TextStyle1.body1BoldBlack,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  listelenenFirsat.firsatAciklama,
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
