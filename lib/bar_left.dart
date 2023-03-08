import 'package:flutter/material.dart';
import 'constants.dart';


class BarLeft extends StatelessWidget {

  const BarLeft({Key? key , required this.barWidth}) : super(key: key);

  final double barWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration:  BoxDecoration(
            borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: accentHexColor,
          ),

        ),
      ],
    );
  }
}
