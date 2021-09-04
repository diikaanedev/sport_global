import 'package:coach_assisttant/utils/colors.dart';
import 'package:flutter/material.dart';

class LeftWidgetMenuItem extends StatelessWidget {
  final IconData icon;
  final String titre;
  final bool actif;

  const LeftWidgetMenuItem(
      {Key? key, required this.icon, required this.titre, required this.actif})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Row(
        children: [
          Container(
            width: 2,
            height: constraints.maxHeight * .9,
            color: actif ? oceanGreen : ghostGrey,
          ),
          Spacer(),
          Container(
            child: Column(
              children: [
                Spacer(),
                Icon(
                  icon,
                  size: constraints.maxHeight * .5,
                  color: actif ? oceanGreen : ghostGrey,
                ),
                Text(
                  titre,
                  style: TextStyle(
                      color: actif ? oceanGreen : ghostGrey,
                      fontSize: constraints.maxHeight * .2),
                ),
                Spacer(),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
