import 'package:flutter/material.dart';
import 'package:tutedude/image_application/image_application_screen.dart';
import 'package:tutedude/personal_business_card_application/personal_business_card_application.dart';

void main() {
  runApp(const MyApp());
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
            fontWeight: FontWeight.w600
          )
        ),
      ),
      // home: ImageApplicationScreen(),
      home: PersonalBusinessCardApplication(),
    );
  }
}
