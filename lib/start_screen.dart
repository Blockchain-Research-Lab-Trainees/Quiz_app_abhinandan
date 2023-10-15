import 'package:flutter/material.dart';

class startscreen extends StatelessWidget{
 const startscreen(this.beginquiz,{super.key});
//a named argument and then a required one

  final void Function() beginquiz;

  @override
  Widget build(context){
    return Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Image.asset('assets/images/quiz-logo.png', width: 280, color: Colors.white70,),
            SizedBox(height: 60),

            Text('Learn Flutter\n The fun way!', style:  TextStyle(fontSize: 30, color: Colors.white)
            ),

            SizedBox(height: 60),

            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: beginquiz,
                  //something something

                label : Text('Lets Go', style: TextStyle(fontSize: 25, color: Colors.white)
                ),

                icon: Icon(Icons.arrow_forward_ios_rounded),
            )

          ],
        )
    );
  }
}



























// Center(
//
// child: Column(
//
// //mainAxisAlignment: MainAxisAlignment.center,
// children: [
//
// Padding(
// padding: const EdgeInsets.only(top : 70),
// child: Image.asset('assets/images/quiz-logo.png', width: 280,
// color: Colors.white70,
// ),
// ),
// SizedBox(height: 60),
// Text('Learn Flutter\n The fun way!', style: TextStyle(color: Colors.white, fontSize: 20),),
// SizedBox(height: 70),
// ElevatedButton.icon(
// style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
// onPressed: (){print('button pressed');},
//
// label: Text('Lets Go!', style: TextStyle(color: Colors.white, fontSize: 25),
//
// ),
// icon: Icon(Icons.arrow_forward_ios_rounded),
// )
//
//
//
// ],
// ),
//),