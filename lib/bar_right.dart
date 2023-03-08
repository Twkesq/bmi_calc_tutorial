import 'package:flutter/material.dart';
import 'constants.dart';


class BarRight extends StatelessWidget {

  const BarRight({Key? key , required this.barWidth}) : super(key: key);

  final double barWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: accentHexColor,
          ),

        ),
      ],
    );
  }
}
