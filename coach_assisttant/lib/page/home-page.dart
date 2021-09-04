import 'package:coach_assisttant/utils/colors.dart';
import 'package:coach_assisttant/widgets/home-page-widget-body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ghostGrey,
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
          ),
          Positioned(
              top: size.height * .025,
              left: size.width * .025,
              child: Container(
                height: size.height * .95,
                width: size.width * .95,
                child: HomePageWidgetBody(),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
              )),
        ],
      ),
    );
  }
}
