import 'package:flutter/material.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/model/oda.dart';
import 'package:future_app/widget/odadetay_page.dart';

class OdaItem extends StatelessWidget {
  final Oda listelenenOda;
  const OdaItem({required this.listelenenOda, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => odaDetay(
                  imgPath: listelenenOda.odaResim,
                  imgAdd: listelenenOda.odaAdi)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: listelenenOda.odaResim,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(listelenenOda.odaResim),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        listelenenOda.odaAdi,
                        style: TextStyle1.body1BoldBlack,
                      ),
                      Row(
                        children: const [
                          Icon(
                            ADIcon.star,
                            size: 10,
                            color: Sabitler.anaRenk,
                          ),
                          Icon(
                            ADIcon.star,
                            size: 10,
                            color: Sabitler.anaRenk,
                          ),
                          Icon(
                            ADIcon.star,
                            size: 10,
                            color: Sabitler.anaRenk,
                          ),
                          Icon(
                            ADIcon.star,
                            size: 10,
                            color: Sabitler.anaRenk,
                          ),
                          Icon(
                            ADIcon.star,
                            size: 10,
                            color: Sabitler.anaRenk,
                          ),
                        ],
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Sabitler.anaRenk,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      padding: const EdgeInsets.only(left: 25, right: 25),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => odaDetay(
                              imgPath: listelenenOda.odaResim,
                              imgAdd: listelenenOda.odaAdi)));
                    },
                    child: Text(Sabitler2.odalarDetay,
                        style: TextStyle1.captionBoldWhite),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
