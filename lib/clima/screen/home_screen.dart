import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:tutedude/clima/screen/screen1.dart';
import 'package:tutedude/clima/service/location.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    if (mounted) {
      getLocation();
    }
    super.initState();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    var apiKey = '224f5a33ddc20c64f9a8d9da610222cf';
    var api =
        "https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid=$apiKey";
    var url = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': location.latitude.toString(),
      'lon': location.longitude.toString(),
      'apikey': apiKey,
    });
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Screen1(
        weatherData: data,
      )));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SpinKitDoubleBounce(color: Colors.grey, size: 50)),
    );
  }
}
