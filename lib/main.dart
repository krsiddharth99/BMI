import 'package:bmi/CalculationResult.dart';
import 'package:bmi/ResultPage.dart';
import 'package:bmi/styling.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Buttonwid.dart';
import 'ReuseContainer.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.deepPurple,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'BMI',
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final Color activeColor = Colors.black;
  final Color inactiveColor = Colors.black26;
  final Color switchActiveColor = Colors.indigo[400];
  final Color switchInactiveColor = Colors.grey;
  bool isIt = true;

  double age = 20;
  double weight = 50;
  double height = 150;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: AppBar(
          title: Center(
            child: Text(
              appBarTitle.toUpperCase(),
              style: appBarTextStyle,
            ),
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReuseContainer(
                        color: Colors.white,
                        cardWid: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Age',
                              style: ageTextStyle,
                            ),
                            SizedBox(height: 5),
                            Text(
                              age.toString(),
                              style: ageNumberStyle,
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ButtonWid(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                ButtonWid(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReuseContainer(
                        color: Colors.white,
                        cardWid: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Weight',
                              style: ageTextStyle,
                            ),
                            SizedBox(height: 5),
                            Text(
                              weight.toString(),
                              style: ageNumberStyle,
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ButtonWid(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    }),
                                ButtonWid(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    }),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReuseContainer(
                  color: Colors.white,
                  cardWid: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Height',
                        style: ageTextStyle,
                      ),
                      Text(
                        'cm',
                        style: cmStyle,
                      ),
                      Text(
                        height.round().toString(),
                        style: ageNumberStyle,
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          overlayColor: Colors.indigo[100],
                          thumbColor: Colors.indigo[400],
                        ),
                        child: Slider(
                          max: 300,
                          min: 120,
                          activeColor: Colors.indigo[500],
                          inactiveColor: Colors.grey,
                          value: height,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseContainer(
                  color: Colors.white,
                  cardWid: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Gender',
                        style: ageTextStyle,
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "i'm",
                            style: ageNumberStyle,
                          ),
                          Container(
                            width: 175,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(80.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo[200],
                                  spreadRadius: 2.0,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 16.0),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontSize: isIt == false ? 20.0 : 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: isIt == false
                                        ? activeColor
                                        : inactiveColor,
                                    fontFamily: 'Caveat',
                                  ),
                                ),
                                Switch(
                                  activeColor: isIt == true
                                      ? switchActiveColor
                                      : switchInactiveColor,
                                  inactiveTrackColor: isIt == false
                                      ? switchActiveColor
                                      : switchInactiveColor,
                                  value: isIt,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      isIt = newValue;
                                    });
                                  },
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                    fontSize: isIt == true ? 22.0 : 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: isIt == false
                                        ? inactiveColor
                                        : activeColor,
                                    fontFamily: 'Caveat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 35.0,
                thickness: 3.0,
                indent: 60.0,
                endIndent: 60.0,
              ),
              Container(
                child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.handHoldingHeart,
                    color: Colors.indigo,
                    size: 45.0,
                    ),
                  onPressed: (){
                    ResultData calc = ResultData(height: height, weight: weight);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_) => ResultPage(
                            finalResult: calc.calculation(),
                            finalStatus: calc.statusResult(),
                            finalInstruction: calc.instructionResult(),
                        ),
                      ),
                    );
                  },
                  ),
              ),
              SizedBox(height: 10.0),
              Divider(
                height: 35.0,
                thickness: 3.0,
                indent: 60.0,
                endIndent: 60.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
