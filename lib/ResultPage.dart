import 'package:bmi/styling.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.finalResult,
      @required this.finalStatus,
      @required this.finalInstruction});

  final String finalResult;
  final String finalStatus;
  final String finalInstruction;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[100],
        appBar: AppBar(
          title: Center(
            child: Text(
              appBarTitle.toUpperCase(),
              style: appBarTextStyle,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 1.7,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo[300],
                      spreadRadius: 1.0,
                      blurRadius: 5.0,
                      offset: Offset(8.0, 8.0),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(39),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo[200],
                            spreadRadius: 2.0,
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          finalResult,
                          style: number,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Divider(
                      thickness: 3.0,
                      indent: 70.0,
                      endIndent: 70.0,
                    ),
                    Divider(
                      thickness: 3.0,
                      indent: 80.0,
                      endIndent: 80.0,
                    ),
                    Divider(
                      thickness: 3.0,
                      indent: 90.0,
                      endIndent: 90.0,
                    ),
                    Divider(
                      thickness: 3.0,
                      indent: 100.0,
                      endIndent: 100.0,
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      finalStatus.toUpperCase(),
                      style: statusStyle,
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          finalInstruction,
                          style: ageTextStyle,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
              SizedBox(height: 35.0),
              RawMaterialButton(
                  elevation: 5.0,
                  fillColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  constraints: BoxConstraints(
                    maxHeight: 60.0,
                    maxWidth: 190.0,
                  ),
                  child: Center(
                    child: Text('RE-CALCULATE',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
