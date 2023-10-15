import 'package:flutter/material.dart';
import 'package:udemy_sec_3/questions_screen.dart';
import 'package:udemy_sec_3/start_screen.dart';
import 'package:udemy_sec_3/data/questions.dart';
import 'package:udemy_sec_3/models/results_screen.dart';
class quiz extends StatefulWidget {
  quiz({super.key});

  @override
  State<quiz> createState() {
      return _quizState();
  }
}

class _quizState extends State<quiz> {
  List <String> selectedAnswers = [];

 // Widget? activescreen;
  var activescreen = 'start-screen';

  //Widget activescreen = startscreen(switchScreen);

  @override
  // void initState() {
  //   activescreen = startscreen(switchScreen);
  //   super.initState();
  // }





  void switchScreen(){
    setState(() {
      activescreen = 'questions-screen';
    });
  }


  void chooseAnswer(String answer){
    selectedAnswers.add(answer);


    if(selectedAnswers.length == questions.length){
      setState(() {
        //selectedAnswers = [];
        activescreen = 'results-screen';
      });
    }


    if(activescreen == 'results-screen'){
        screenWidget == ResultsScreen(chosenAnswers: selectedAnswers);
    }
  }



  @override
  Widget build(context) {
    Widget screenwidget = startscreen(switchScreen);

  if(activescreen == 'questions-screen'){
  screenwidget = questionsscreen(onSelectAnswer: chooseAnswer,);
  }

    // final screenWidget = activescreen == 'start-screen'
    //     ? startscreen(switchScreen)
    //     : questionsscreen();


    return MaterialApp(
        home: Scaffold(
            body: Container(

                color : Colors.purple,
                child: screenwidget
            )
        )
    );
  }
}
