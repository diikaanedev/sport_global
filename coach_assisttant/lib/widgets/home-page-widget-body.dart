import 'package:coach_assisttant/utils/colors.dart';
import 'package:coach_assisttant/widgets/dashbord-menu-top.dart';
import 'package:coach_assisttant/widgets/left-menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePageWidgetBody extends StatefulWidget {
  const HomePageWidgetBody({Key? key}) : super(key: key);

  @override
  _HomePageWidgetBodyState createState() => _HomePageWidgetBodyState();
}

class _HomePageWidgetBodyState extends State<HomePageWidgetBody> {
  int y = int.parse(DateFormat('y').format(DateTime.now()));
  int yL = int.parse(DateFormat('y').format(DateTime.now())) - 1;
  int yP = int.parse(DateFormat('y').format(DateTime.now())) + 1;
  int choixMenu = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            color: ghostGrey,
          ),
          Positioned(
              child: Container(
            height: constraints.maxHeight,
            width: constraints.maxHeight * .07,
            child: Column(
              children: [
                SizedBox(
                  height: constraints.maxHeight * .1,
                ),
                Container(
                    height: constraints.maxHeight * .07,
                    child: LeftWidgetMenuItem(
                      icon: Icons.dashboard_customize,
                      titre: 'dashbord',
                      actif: choixMenu == 0,
                    )),
                SizedBox(
                  height: constraints.maxHeight * .03,
                ),
                Container(
                    height: constraints.maxHeight * .07,
                    child: LeftWidgetMenuItem(
                      icon: Icons.event,
                      titre: 'Events',
                      actif: choixMenu == 1,
                    )),
                SizedBox(
                  height: constraints.maxHeight * .03,
                ),
                Container(
                    height: constraints.maxHeight * .07,
                    child: LeftWidgetMenuItem(
                      icon: Icons.person_add_alt_1_rounded,
                      titre: 'Équipe',
                      actif: choixMenu == 2,
                    )),
                SizedBox(
                  height: constraints.maxHeight * .03,
                ),
                Container(
                    height: constraints.maxHeight * .07,
                    child: LeftWidgetMenuItem(
                      icon: Icons.book,
                      titre: 'Livres',
                      actif: choixMenu == 3,
                    )),
                SizedBox(
                  height: constraints.maxHeight * .03,
                ),
                Container(
                    height: constraints.maxHeight * .07,
                    child: LeftWidgetMenuItem(
                      icon: Icons.video_collection,
                      titre: 'Vidéos',
                      actif: choixMenu == 4,
                    )),
                SizedBox(
                  height: constraints.maxHeight * .12,
                ),
                Container(
                  height: 1,
                  color: battleGreen,
                ),
                SizedBox(
                  height: constraints.maxHeight * .03,
                ),
                Container(
                    height: constraints.maxHeight * .07,
                    child: LeftWidgetMenuItem(
                      icon: Icons.help,
                      titre: 'Aide',
                      actif: choixMenu == 5,
                    )),
                SizedBox(
                  height: constraints.maxHeight * .03,
                ),
                Container(
                    height: constraints.maxHeight * .07,
                    child: LeftWidgetMenuItem(
                      icon: Icons.desktop_mac,
                      titre: 'Support ',
                      actif: choixMenu == 6,
                    )),
              ],
            ),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8))),
          )),
          Positioned(
              child: Container(
            height: constraints.maxHeight * .07,
            width: constraints.maxWidth,
            child: Row(
              children: [
                SizedBox(
                  width: constraints.maxWidth * .015,
                ),
                Text(
                  'Coach Assistant',
                  style: TextStyle(fontSize: constraints.maxHeight * .03),
                ),
                Spacer(),
                DropdownButton<String>(
                  style: TextStyle(
                      fontSize: constraints.maxHeight * .03,
                      fontWeight: FontWeight.bold,
                      color: battleGreen),
                  underline: Container(),
                  icon: Icon(
                    CupertinoIcons.chevron_down_circle_fill,
                    color: butterCup,
                  ),
                  items: <String>[
                    '$yL',
                    '$y',
                    '$yP',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(
                        "${int.parse(value) - 1}-$value",
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            color: battleGreen,
                            fontSize: constraints.maxHeight * .02,
                            fontWeight: FontWeight.w300),
                      ),
                    );
                  }).toList(),
                  value: y.toString(),
                  onChanged: (value) {
                    setState(() {
                      y = int.parse(value!);
                      yL = y - 1;
                      yP = y + 1;
                    });
                  },
                ),
                SizedBox(
                  width: constraints.maxWidth * .1,
                ),
                CircleAvatar(
                    backgroundColor: battleGreen,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSDB0aJHmuRqGdLrhATdIRB5mSnHcg0Qr-bMnMd_QVfBYukHEc837jvz8TZjCHnEqE81Q&usqp=CAU')),
                SizedBox(
                  width: constraints.maxWidth * .015,
                ),
                CircleAvatar(
                  backgroundColor: battleGreen,
                  child: Center(
                    child: Text('D',
                        style: TextStyle(
                            fontSize: constraints.maxHeight * .02,
                            color: white)),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth * .015,
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          )),
          Positioned(
              top: constraints.maxHeight * .07,
              left: constraints.maxWidth * .035,
              child: Container(
                height: constraints.maxHeight * .93,
                width: constraints.maxWidth * .965,
                child: Column(
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * .02,
                    ),
                    Container(
                      height: constraints.maxHeight * .05,
                      width: constraints.maxWidth * .94,
                      child: DashBordMenuTop(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: white,
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    // color: oceanGreen,
                    borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                )),
              ))
        ],
      ),
    );
  }
}
