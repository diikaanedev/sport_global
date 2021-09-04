import 'package:flutter/material.dart';

class DashBordMenuTop extends StatelessWidget {
  const DashBordMenuTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Row(
        children: [
          Spacer(),
          Icon(Icons.date_range),
          Spacer(),
        ],
      ),
    );
  }
}
