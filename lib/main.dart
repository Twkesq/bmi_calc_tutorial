import 'package:flutter/material.dart';
import 'home.dart';

void main(){
  runApp(BMI_Calc());
}


class BMI_Calc extends StatelessWidget {
  const BMI_Calc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Home(),
    );
  }
}
