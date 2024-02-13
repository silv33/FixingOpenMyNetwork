import 'package:flutter/material.dart';

class PaddedText extends StatelessWidget {
  PaddedText({
    required this.text,
    required this.padd,
    this.style,
  });
  final String? text;
  final TextStyle? style;
  final double? padd;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(top:padd??15.0,left: padd??8.0,),
                child: Container(
                  child: Text(text??'Enter Text',style: style,),
                ),
              );
  }

  
}