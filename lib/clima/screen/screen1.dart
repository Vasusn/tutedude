import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  String kelvinToCel(var temp) {
    double tempInCel = temp - 273.15;
    return tempInCel.floor().toString();
  }

  Future<void> getWeatherDataFromCityName(String cityName) async {
    var apiKey = '224f5a33ddc20c64f9a8d9da610222cf';
    var url = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'q': cityName,
      'apikey': apiKey,
    });
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var weatherData = jsonDecode(response.body);
      print(weatherData);
    }
  }
void updateUI(weatherData){
   // var weatherData = weatherData['weather'][0]['id'];
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/screen1.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.near_me, color: Colors.white, size: 35),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
              Text(
                'Pune',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '18°',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
