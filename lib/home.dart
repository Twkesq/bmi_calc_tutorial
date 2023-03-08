import 'package:flutter/material.dart';
import 'constants.dart';
import 'bar_left.dart';
import 'bar_right.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _heightCont = TextEditingController();
  final TextEditingController _weightCont = TextEditingController();
  double _bmiRes = 0;
  String _textRes = "";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator",style: TextStyle(color: accentHexColor ,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.transparent,
          elevation: 0, // no shadow effect
          centerTitle: true,
        ),
        backgroundColor:mainHexColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    child: TextField(controller: _heightCont ,style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300, color: accentHexColor), keyboardType: TextInputType.number ,decoration: InputDecoration(hintText: "Height" , border: InputBorder.none,hintStyle: TextStyle(fontSize: 42,color: Colors.white.withOpacity(.8))),),
                  ),
                  Container(
                    width: 150,
                    child: TextField(controller: _weightCont,style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300, color: accentHexColor), keyboardType: TextInputType.number ,decoration: InputDecoration(hintText: "Weight" , border: InputBorder.none,hintStyle: TextStyle(fontSize: 42,color: Colors.white.withOpacity(.8))),),
                  )
                ],
              ),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap:() {
                  double h = double.parse(_heightCont.text);
                  double w = double.parse(_weightCont.text);
                  setState(() {
                    _bmiRes = w / (h*h);
                    if (_bmiRes > 25){
                      _textRes = "You`re over weight";
                    }
                    else if (_bmiRes >= 18.5 && _bmiRes <=25 ){
                      _textRes = "You have normal weight";
                    }
                    else{
                      _textRes = "You`re under weight";
                    }

                  });
                } ,
                child: Text("Calculate" , style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: accentHexColor),),
              ),
              const SizedBox(height: 50,),
              Container(
                child: Text(_bmiRes.toStringAsFixed(2), style: TextStyle(fontSize: 90,color: accentHexColor),),
              ),
              const SizedBox(height: 30,),



              Visibility(
                visible:_textRes.isNotEmpty,
                child:Container(
                  child:Text(_textRes , style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400 ,color: accentHexColor),),
                ),
        ),




              const SizedBox(height: 10,),
              const BarLeft(barWidth: 40,),
              const SizedBox(height: 20,),
              const BarLeft(barWidth: 70),
              const SizedBox(height: 20,),
              const BarLeft(barWidth: 40),
              const SizedBox(height: 20,),
              const BarRight(barWidth: 70),
              const SizedBox(height: 20,),
              const BarRight(barWidth: 20),
              const SizedBox(height: 20,),
              const BarRight(barWidth: 40),


            ],
          ),
        ),

    );
  }
}
