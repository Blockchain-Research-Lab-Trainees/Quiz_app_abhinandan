import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_sec_3/data/questions.dart';
import 'package:udemy_sec_3/models/questions_summary.dart';

class ResultsScreen extends StatelessWidget{
  ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List <Map<String, Object>> getSummaryData(){
final List<Map<String, Object>> summary = [];

for(var i = 0;i<chosenAnswers.length;i++){
  summary.add({
    'question_index' : i,
    'question' : questions[i].text,
    'correct_answer' : questions[i].answers[0],
    'user_answers' : chosenAnswers[i]
    });
}


return summary;
  }


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            
            Text('You answered the following questions'),
            
            SizedBox(height: 30),
            // Text('List of answers of questions'),
            QuestionsSummary(getSummaryData())
            ,SizedBox(height : 30),

            ElevatedButton(onPressed: (){},
                child: Text('Try Again')
            )


          ],
        ),
      ),
    )

  }
}