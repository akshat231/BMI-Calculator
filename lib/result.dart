import 'package:bmi_calculator/card_page.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'input_page.dart';

class resultpage extends StatelessWidget {


  resultpage({required this.bmitext,required this.bmilongtext,required this.bmiresult});
  
  final String bmitext;
  final String bmiresult;
  final String bmilongtext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 50.0),
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Usable_Card(
              cardcolor: activecolorcode,
              CardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        bmitext,
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        bmiresult,
                        style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        bmilongtext,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              Navigator.pop(context),
            },
            child: Container(
              height: 80.0,
              margin: EdgeInsets.only(
                top: 10.0,
              ),
              width: double.infinity,
              color: Colors.pink,
              child: Center(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
