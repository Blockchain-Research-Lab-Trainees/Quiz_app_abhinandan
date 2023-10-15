import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_sec_3/models/buttons.dart';
import 'package:udemy_sec_3/data/questions.dart';

class questionsscreen extends StatefulWidget{
questionsscreen({super.key, required this.onSelectAnswer});

final void Function(String answer) onSelectAnswer;

  @override
  State<questionsscreen> createState() => _questionsscreenState();
   // return _questionsscreenState();
}

class _questionsscreenState extends State<questionsscreen>{

  var currentQuestionIndex = 0;

  void answerQuestion(){
    widget.onSelectAnswer('');
    setState(() {
      currentQuestionIndex ++;
    });

  }

  @override
  Widget build(BuildContext context){

    final currentQuestion = questions[0];

    return SizedBox(width : double.infinity,
    child: Container(
      
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
                    currentQuestion.text, style : TextStyle(
                    color: Colors.white))),
            SizedBox(height: 30),
      
            ...currentQuestion.getShuffledAnswers().map((answer)
            {return Answerbutton(answerText: answer, onTap: (){answerQuestion(answer);
              },
            );
            }
            )
            

      
        ],
      ),
    ),
    );
  }

}


// class questionsscreen extends StatefulWidget {
//   const questionsscreen({super.key});
//
//   @override
//   State<questionsscreen> createState() => _questionsscreenState();
// }
//
// class _questionsscreenState extends State<questionsscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

















// , Answerbutton(answerText: currentQuestion.answers[0], onTap:answerQuestion),
// SizedBox(height: 30),
//
// Answerbutton(answerText: currentQuestion.answers[1], onTap: (){}),
// SizedBox(height: 30),
//
// Answerbutton(answerText: currentQuestion.answers[2], onTap: (){}),
// SizedBox(height: 30),
//
// Answerbutton(answerText: currentQuestion.answers[2], onTap: (){}),
// SizedBox(height: 30),