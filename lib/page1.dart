import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new2/page2.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  double height = 120.0;
  Color maleColor = Color(0XFF24263B);
  Color femaleColor = Color(0XFF24263B);
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
        backgroundColor: Color(0XFF1D2136),
      ),
      backgroundColor: Color(0XFF1D2136),
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    maleColor = Color(0XFF323244);
                    femaleColor = Color(0XFF24263B);
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: maleColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 100,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'male',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    maleColor = Color(0XFF24263B);
                    femaleColor = Color(0XFF323244);
                  });
                },
                child: Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: femaleColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        size: 100,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'female',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: 320,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Color(0XFF323244),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF515263),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${height.round()}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                  min: 0.0,
                  max: 220.0,
                  activeColor: Color(0XFFE83D66),
                  inactiveColor: Color(0XFF515263),
                  value: height,
                  onChanged: (val) {
                    setState(() {
                      height = val;
                    });
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color(0XFF323244),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      '$weight',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton.small(
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                          child: const Icon(Icons.remove),
                          backgroundColor: Color(0XFF5D5F6E),
                        ),
                        FloatingActionButton.small(
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          child: const Icon(Icons.add),
                          backgroundColor: Color(0XFF5D5F6E),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
             // SizedBox(width: 5),
              Container(
                //margin: EdgeInsets.all(13),
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color(0XFF323244),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      '$age',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton.small(
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                          child: const Icon(Icons.remove),
                          backgroundColor: Color(0XFF5D5F6E),
                        ),
                        FloatingActionButton.small(
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          child: const Icon(Icons.add),
                          backgroundColor: Color(0XFF5D5F6E),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 60,
            width: double.maxFinite,
           // margin: EdgeInsets.only(top: 3),
            child: MaterialButton(
              onPressed: () {
                double bmi = weight / pow( height/ 100, 2);

                Navigator.pushNamed(context, '/page2', arguments: bmi);

              },
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 30),
              ),
              color: Color(0XFFE83D66), // لون الزر
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}