import 'package:flutter/material.dart';
import 'package:future_app/assets/ad_icon.dart';
import 'package:future_app/constants/renkler.dart';
import 'package:future_app/model/weather.dart';
import 'package:future_app/services/weather_service.dart';

class havaDurumu extends StatefulWidget {
  const havaDurumu({super.key});

  @override
  State<havaDurumu> createState() => _havaDurumuState();
}

class _havaDurumuState extends State<havaDurumu> {
  WeatherService weatherService = WeatherService();
  Weather weather = Weather();

  String currentWeather = "";
  double tempC = 0;
  double tempF = 0;

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  void getWeather() async {
    weather = await weatherService.getWeatherData("Antalya");

    setState(() {
      currentWeather = weather.condition;
      tempF = weather.temperatureC;
      tempC = weather.temperatureF;
    });
    print(weather.temperatureC);
    print(weather.temperatureF);
    print(weather.condition);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              //1st Image of Slider
              Container(
                width: screenWidth,
                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/aktivite/yoga-detay.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider

              Positioned(
                // The Positioned widget is used to position the text inside the Stack widget
                top: 30,
                left: 25,

                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                    width: 45,
                    height: 45,
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Sabitler.anaRenk,
                    ),
                    child: const Center(
                      child: Icon(
                        ADIcon.arrowleft_4,
                        color: Sabitler.text,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentWeather),
              Text(tempC.toString()),
              Text(tempF.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
