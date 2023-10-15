import 'package:flutter/material.dart';

class Answerbutton extends StatelessWidget{
  Answerbutton({ super.key,required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(onPressed: (){},
        child: Text(answerText)
    );
  }
}