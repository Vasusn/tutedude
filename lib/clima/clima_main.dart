import 'package:flutter/material.dart';
import 'package:tutedude/clima/screen/home_screen.dart';

class ClimaMain extends StatelessWidget {
  const ClimaMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
