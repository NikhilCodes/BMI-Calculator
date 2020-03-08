import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'text_styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your BMI',
      home: MyHomePage(
        title: "YourBMI",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var gender;
  var height = 170.0;
  var weight = 60;
  var age = 19;

  // Constants
  double widthScale1 = 0.32;
  double heightScale1 = 0.2;

  double heightScale2 = 0.25;

  double widthScale3 = 0.425;
  double heightScale3 = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.92,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    "BMI",
                    style: TextStyle(
                        letterSpacing: 4, color: Colors.white, fontSize: 18),
                  ),
                ),
                Row(
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.all(22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * widthScale1,
                        height: MediaQuery.of(context).size.height * heightScale1,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "images/man.png",
                              scale: 5.5,
                            ),
                            Container(
                              height: 20,
                            ),
                            Text(
                              "MALE",
                              style: textStyle1,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                      ),
                      color: Colors.white10,
                      splashColor: Colors.yellow.shade700,
                      onPressed: () {
                        return null;
                      },
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * widthScale1,
                        height: MediaQuery.of(context).size.height * heightScale1,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "images/woman.png",
                              scale: 5.5,
                            ),
                            Container(
                              height: 20,
                            ),
                            Text(
                              "FEMALE",
                              style: textStyle1,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                      color: Colors.white10,
                      splashColor: Colors.yellow.shade700,
                      onPressed: () {
                        return null;
                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ), // Gender Buttons
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white10,
                  ),
                  height: MediaQuery.of(context).size.height * heightScale2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "HEIGHT",
                        style: textStyle1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            height.toStringAsFixed(1),
                            style: textStyle2,
                          ),
                          Text(
                            " cm",
                            style: textStyle3,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          thumbColor: Colors.yellow.shade700,
                          activeTrackColor: Colors.yellow.shade900,
                        ),
                        child: Slider(
                          value: height,
                          onChanged: (newRating) {
                            setState(() {
                              height = newRating;
                            });
                          },
                          min: 53.0,
                          max: 280.0,
                        ),
                      ),
                    ],
                  ),
                ), // Height
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white10,
                      ),
                      height: MediaQuery.of(context).size.height * heightScale3,
                      width: MediaQuery.of(context).size.width * widthScale3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: textStyle1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: textStyle2,
                              ),
                              Text(
                                " Kg",
                                style: textStyle3,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30.0,
                                height: 30.0,
                                child: FloatingActionButton(
                                  heroTag: 'btn1',
                                  backgroundColor: Colors.yellow.shade700,
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 30.0,
                                height: 30.0,
                                child: FloatingActionButton(
                                  heroTag: 'btn2',
                                  backgroundColor: Colors.yellow.shade700,
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ), // WEIGHT
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white10,
                      ),
                      height: MediaQuery.of(context).size.height * heightScale3,
                      width: MediaQuery.of(context).size.width * widthScale3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "AGE",
                            style: textStyle1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: textStyle2,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30.0,
                                height: 30.0,
                                child: FloatingActionButton(
                                  heroTag: 'btn3',
                                  backgroundColor: Colors.yellow.shade700,
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 30.0,
                                height: 30.0,
                                child: FloatingActionButton(
                                  heroTag: 'btn4',
                                  backgroundColor: Colors.yellow.shade700,
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ), // AGE
                  ],
                ),
              ],
            ),
          ),
          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width,
            child: RaisedButton(
              color: Colors.yellow.shade700,
              child: Text(
                "CALCULATE BMI",
                style: TextStyle(
                  letterSpacing: 3,
                ),
              ),
              onPressed: () {
                var status;
                var bmiValue = weight / pow(height / 100, 2);
                if ((18.5 < bmiValue) && (bmiValue < 25)) {
                  status = "NORMAL";
                } else if (bmiValue < 18.5) {
                  status = "UNDERWEIGHT";
                } else {
                  status = "OVERWEIGHT";
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmi: bmiValue,
                            status: status,
                          )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  ResultPage({this.bmi, this.status});

  final double bmi;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Your Result"),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          height: window.physicalSize.height / 4.5,
          width: window.physicalSize.width / 4,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.yellow.shade600,
                  Colors.yellow.shade900,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                status,
                style: TextStyle(fontSize: 20, letterSpacing: 3),
              ),
              Text(
                bmi.toStringAsFixed(1),
                style: TextStyle(
                    color: Colors.orange.shade800,
                    fontSize: 60,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text("Normal BMI range:", style: noteTextStyle1,),
                    Text("18.5 - 25 kg/m²", style: noteTextStyle2,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
