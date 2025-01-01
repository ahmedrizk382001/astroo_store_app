import 'package:flutter/material.dart';

class AstrooShopApp extends StatelessWidget {
  const AstrooShopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Astroo Shop App"),
        ),
      ),
    );
  }
}
