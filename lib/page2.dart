import 'package:flutter/material.dart';
import 'package:new2/page1.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double bmi = ModalRoute.of(context)!.settings.arguments as double;
    String bmiStatus = '';
    String bmistatus = '';
    if (bmi < 18.6) {
      bmiStatus = 'Underweight';
    } else if (bmi > 25) {
      bmiStatus = 'Overweight';
    } else {
      bmiStatus = 'Normal';
    }
    if (bmiStatus == 'Underweight') {
      bmistatus = 'You have underweight. You should go to the doctor.';
    } else if (bmiStatus == 'Overweight') {
      bmistatus = 'You have overweight. You should go to the doctor.';
    } else {
      bmistatus = 'You have normal body weight.';
    }


    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Result',
          style: TextStyle(fontSize: 40),
        ),
        elevation: 0,
        backgroundColor: Color(0XFF1D2136),
      ),
      backgroundColor: Color(0XFF1D2136),
      body: Column(
        children: [
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(top: 10,right: 10,left: 10),
            padding: EdgeInsets.only(right: 20,left: 20),
            width: 400,
            height: 580,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Color(0XFF323244),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  Center(child: Text('$bmiStatus', style: TextStyle(color: Color(0XFF6CB88E),fontSize: 17),)),
                  SizedBox(height: 80,),
                  Center(
                    child: Text('${bmi.toStringAsFixed(1)}',style: TextStyle(color: Colors.white,fontSize: 80),),
                  ),
                  SizedBox(height: 150,),
                 Center( child:Text('$bmistatus',style: TextStyle(color: Colors.white,fontSize: 20),)),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 75,
            width: double.maxFinite,
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Re-Calculate',
                style: TextStyle(fontSize: 30),
              ),
              color: Color(0XFFE83D66),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}