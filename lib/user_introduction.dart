import 'package:flutter/material.dart';

class UserIntroduction extends StatelessWidget {
  // Constructor
  const UserIntroduction({Key? key, required this.name, required this.introduction}) : super(key: key);

  // Instance Variables
  final String name;
  final String introduction;

  // Widget
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
        Text(
          introduction,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}