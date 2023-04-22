import 'package:flutter/material.dart';
import 'constants.dart';







class Usable_Card extends StatelessWidget {
  final Widget? CardChild;
  final Color cardcolor;
  Usable_Card({this.CardChild,required this.cardcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cardcolor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}






class Column_Widget extends StatelessWidget {
  final String sex;
  final Icon awesome;
  final Color colour;
  Column_Widget({required this.sex, required this.awesome,required this.colour});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        awesome,
        SizedBox(
          height: 15.0,
        ),
        Text(
          sex,
          style: TextStyle(
            color:colour,
            fontSize: 19.0,
          ),
        ),
      ],
    );
  }
}



TextStyle TextStyleWidget() {
    return TextStyle(
      fontSize: 19.0,
      color: textcolorcode,
    );
  }




  TextStyle Number_Style() {
    return TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white           );
  }


class Sized_Box_10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.0,
    );
  }
}



 SliderThemeData Slider_Theme_Data() {
    return SliderThemeData(
                      trackHeight: 2.0,
                      activeTrackColor: Colors.white,
                      thumbColor: Colors.pink,
                      overlayColor: Color.fromRGBO(88, 28, 38, 0.9),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    );
  }

