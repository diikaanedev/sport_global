import 'package:coach_assisttant/page/home-page.dart';
import 'package:coach_assisttant/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coach Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Open_Sans',
      ),
      home: HomePage(),
    );
  }
}
