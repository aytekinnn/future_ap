import 'package:flutter/material.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:get/get.dart';

class hesapPage extends StatefulWidget {
  const hesapPage({super.key});

  @override
  State<hesapPage> createState() => _hesapPageState();
}

class _hesapPageState extends State<hesapPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/aktivite/user.png"),
                      opacity: 0.1,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dil Seçiniz",
                    style: TextStyle1.captionMediumBlack,
                  ),
                  
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
