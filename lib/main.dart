import 'package:flutter/material.dart';
import 'package:tutedude/bmi_calculator/bmi_calculator.dart';
import 'package:tutedude/clima/clima_main.dart';
import 'package:tutedude/dicee_application/dicee_application.dart';
import 'package:tutedude/image_application/image_application_screen.dart';
import 'package:tutedude/personal_business_card_application/personal_business_card_application.dart';
import 'package:tutedude/xylophone_application/xylophone_application.dart';

void main() {
  runApp(
      const MyApp()
    // ClimaMain()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TuteDude',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      // home: ImageApplicationScreen(),
      // home: PersonalBusinessCardApplication(),
      // home: DiceeApplication(),
      // home: XylophoneApplication(),
      home: BmiCalculator(),
    );
  }
}
