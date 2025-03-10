import 'package:flutter/material.dart';

class PersonalBusinessCardApplication extends StatelessWidget {
  const PersonalBusinessCardApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Card'),
        backgroundColor: Colors.brown[800],
      ),
      backgroundColor: Colors.brown[200],
      body: const Padding(padding: EdgeInsets.all(15.0), child: BusinessCard()),
    );
  }
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 260,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const IconWithText(
            mainAxisAlignment: MainAxisAlignment.end,
            icon: Icons.phone,
            text: '+91 99223*****',
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset('assets/avatar.jpg', height: 100, width: 100),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconWithText(
                    icon: Icons.person,
                    text: 'Vasu Nageshri',
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconWithText(
                    icon: Icons.home,
                    text: 'Charusat, Anand',
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconWithText(
                    icon: Icons.factory,
                    text: 'Ahmedabad, Gujarat',
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          const Divider(color: Colors.black, thickness: 2),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ContactInfo(icon: Icons.email, text: 'vasunageshri@gmail.com'),
              ContactInfo(icon: Icons.web, text: 'www.vasunageshri.com'),
            ],
          ),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  const IconWithText({
    super.key,
    required this.icon,
    required this.text,
    this.textStyle,
    this.mainAxisAlignment,
  });

  final IconData icon;
  final String text;
  final TextStyle? textStyle;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        Icon(icon, size: 20),
        const SizedBox(width: 6),
        Text(text, style: textStyle),
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 22),
        const SizedBox(height: 4),
        Text(text, textAlign: TextAlign.center),
      ],
    );
  }
}
