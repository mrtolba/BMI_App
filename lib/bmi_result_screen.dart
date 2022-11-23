import 'package:flutter/material.dart';

class bmiResultScreen extends StatelessWidget {


 final bool isMale;
 final int age;
 final int result;
 const bmiResultScreen({Key? key,
  required this.isMale,
   required this.age,
  required this.result,
 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
          ),
        ),
      ),
      body: Container(
           padding:const EdgeInsetsDirectional.all(30.0) ,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              isMale? 'Gender:Male' : 'Gender:Female',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Text(
              'Result: $result',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Text(
              'Age: $age',
              style: const TextStyle(
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
