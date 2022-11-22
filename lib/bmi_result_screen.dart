import 'package:flutter/material.dart';

class bmiResultScreen extends StatelessWidget {


 final bool isMale;
 final int age;
 final int result;
 bmiResultScreen({
  required this.isMale,
   required this.age,
  required this.result,
 });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Result',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
          ),
        ),
      ),
      body: Container(
           padding:EdgeInsetsDirectional.all(30.0) ,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              isMale? 'Gender:Male' : 'Gender:Female',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Text(
              'Result: $result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Text(
              'Age: $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
