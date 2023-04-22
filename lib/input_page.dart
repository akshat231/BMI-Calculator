import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_page.dart';
import 'constants.dart';
import 'result.dart';
import 'dart:math';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  FIRST COLUMN FOR MALE-FEMALE

        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => {
                    setState(() {
                      updatecolor(1);
                    }),
                  },
                  child: Usable_Card(
                    cardcolor: malecardcolor,
                    CardChild: Column_Widget(
                      colour: maleicon,
                      awesome: Icon(FontAwesomeIcons.mars,
                          size: 80.0, color: maleicon),
                      sex: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => {
                    setState(() {
                      updatecolor(2);
                    }),
                  },
                  child: Usable_Card(
                    cardcolor: femalecardcolor,
                    CardChild: Column_Widget(
                      colour: femaleicon,
                      sex: 'FEMALE',
                      awesome: Icon(
                        FontAwesomeIcons.venus,
                        size: 80.0,
                        color: femaleicon,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //SECOND COLUMN FOR HEIGHT

        Expanded(
          child: Usable_Card(
            CardChild: Center(
              child: Column(
                children: [
                  Sized_Box_10(),
                  Text(
                    'HEIGHT',
                    style: TextStyleWidget(),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height_value.round().toString(),
                        style: Number_Style(),
                      ),
                      Text(
                        'cm',
                        style: TextStyleWidget(),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: Slider_Theme_Data(),
                    child: Slider(
                      value: height_value,
                      max: 300,
                      min: 10,
                      label: height_value.round().toString(),
                      onChanged: (double value) {
                        setState(
                          () {
                            height_value = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            cardcolor: activecolorcode,
          ),
        ),

        //THIRD COLUMN FOR AGE WEIGHT

        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Usable_Card(
                  cardcolor: activecolorcode,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyleWidget(),
                      ),
                      Text(
                        weight_value.toString(),
                        style: Number_Style(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () => {
                              setState(() {
                                weight_value = weight_value - 1;
                              }),
                            },
                            backgroundColor: Color(0xFF1d1e00),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 40.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          FloatingActionButton(
                            onPressed: () => {
                              setState(() {
                                weight_value = weight_value + 1;
                              })
                            },
                            backgroundColor: Color(0xFF1d1e00),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 40.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Usable_Card(
                  cardcolor: activecolorcode,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyleWidget(),
                      ),
                      Text(
                        age_value.toString(),
                        style: Number_Style(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () => {
                              setState(() {
                                age_value = age_value - 1;
                              }),
                            },
                            backgroundColor: Color(0xFF1d1e00),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 40.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          FloatingActionButton(
                            onPressed: () => {
                              setState(() {
                                age_value = age_value + 1;
                              })
                            },
                            backgroundColor: Color(0xFF1d1e00),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 40.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        //SUBMIT

        GestureDetector(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => resultpage(
                  bmiresult: update_result(height_value.toInt(),weight_value),
                  bmitext: getresult(height_value.toInt(), weight_value),
                  bmilongtext:getinterpretation(height_value.toInt(), weight_value),
                ),
              ),
            ),
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
                'CALCULATE YOUR BMI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  
  String update_result(int h, int w) 
  {
    double bmi=w/pow(h/100,2);
    return bmi.toStringAsFixed(1);
  }
   String getresult(int h, int w)
  {
    double bmi=w/pow(h/100,2);
    if(bmi>=25)
    {
      return 'OVERWEIGHT';
    }
    else if(bmi>=18.5)
    {
      return 'NORMAL';
    }
    else
    {
      return 'UNDERWEIGHT';
    }
  }
  String getinterpretation(int h,int w)
  {
    double bmi=w/pow(h/100,2);
    if(bmi>=25)
    {
      return 'You have higher than normal body weight.Try to exercise more.';
    }
    else if(bmi>=18.5)
    {
      return 'You have normal body weight.Good Job.';
    }
    else
    {
      return 'You have lower than normal body weight.You can eat more.';
    }
  }
}
