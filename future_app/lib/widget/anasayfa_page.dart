import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:future_app/constants/text.dart';
import 'package:future_app/constants/text_style.dart';
import 'package:future_app/model/weather.dart';
import 'package:future_app/services/weather_service.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/slider/slider-1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //2nd Image of Slider
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/slider/slider-2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //3nd Image of Slider
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/slider/deneme.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //4th Image of Slider
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 300.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.easeIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 1,
          ),
        ),
        const Image(
          height: 50,
          image: AssetImage("assets/images/logo-ici-dolu.png"),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/otelBilgisi');
          },
          child: Container(
            margin: const EdgeInsets.only(top: 1, bottom: 1),
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner/app-banner-1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                Sabitler2.otelBilgisi,
                style: TextStyle1.anasayfaBaslik,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            String url = 'https://aytekinbagci.com.tr';
            if (await canLaunch(url)) {
              await launch(url, forceSafariVC: false);
            } else {
              const Text("Sayfa Bulunamadı");
            }
          },
          child: Container(
            margin: const EdgeInsets.only(top: 1, bottom: 1),
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner/app-banner-2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(Sabitler2.hizliCehckin,
                  style: TextStyle1.anasayfaBaslik),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/odalarPage');
          },
          child: Container(
            margin: const EdgeInsets.only(top: 1, bottom: 1),
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner/app-banner-3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                Sabitler2.odalar,
                style: TextStyle1.anasayfaBaslik,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/restoranBarlarPage');
          },
          child: Container(
            margin: const EdgeInsets.only(top: 1, bottom: 1),
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner/app-banner-4.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child:
                  Text(Sabitler2.restoranBar, style: TextStyle1.anasayfaBaslik),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/plajHavuzlarPage');
          },
          child: Container(
            margin: const EdgeInsets.only(top: 1, bottom: 1),
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner/app-banner-5.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child:
                  Text(Sabitler2.plajHavuz, style: TextStyle1.anasayfaBaslik),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/aktivitelerPage');
          },
          child: Container(
            margin: const EdgeInsets.only(top: 1, bottom: 1),
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner/app-banner-6.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(Sabitler2.aktivite, style: TextStyle1.anasayfaBaslik),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/odaServisiPage');
          },
          child: Container(
            margin: const EdgeInsets.only(top: 1, bottom: 1),
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner/app-banner-7.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child:
                  Text(Sabitler2.odaServisi, style: TextStyle1.anasayfaBaslik),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 1, bottom: 1),
          height: 120,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/banner/app-banner-8.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(Sabitler2.havaDurumu, style: TextStyle1.anasayfaBaslik),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    tempF.toString() + " °C",
                    style: TextStyle1.anasayfaBaslikHava,
                  ),
                ),
                Text(
                  tempC.toString() + " °F",
                  style: TextStyle1.anasayfaBaslikHava,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
