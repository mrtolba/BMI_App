import 'dart:math';

import 'package:bmi_app_mt/bmi_result_screen.dart';

import 'package:flutter/material.dart';

class bmiScreen extends StatefulWidget {
  const bmiScreen({Key? key}) : super(key: key);

  @override
  State<bmiScreen> createState() => _bmiScreenState();
}

class _bmiScreenState extends State<bmiScreen> {
  bool isMale = true;
  int age = 20;
  int weight = 20;
  int height = 100;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold ,
            fontSize: 30.0,
          ),
        ),
      ),
      body: Column(

        children: [
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsetsDirectional.all(10.0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              width: 90.0,
                              height: 90.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale? Colors.blue:Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsetsDirectional.all(10.0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              width: 90.0,
                              height: 90.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FAMLE',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale?  Colors.grey:Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text(
                     'HEIGHT',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 40.0,
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         '$height',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 40.0,
                         ),
                       ),
                       SizedBox(
                         width: 5.0,
                       ),
                       const Text(
                         'CM',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 40.0,
                         ),
                       ),
                     ],
                   ),
                   Expanded(
                     child: Slider(
                       value: height.roundToDouble(),
                         min: 80.0,
                         max: 220.0,
                         onChanged: (value){
                         setState(() {
                           height=value.round();
                         });
                         },
                     ),
                   ),
                 ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });

                                },
                               child:Icon(
                                 Icons.remove
                               ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: (){
                              setState(() {
                                age++;
                              });
                              },
                              child:Icon(
                                  Icons.add
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              child:Icon(
                                  Icons.remove
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              child:Icon(
                                  Icons.add
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
                onPressed:(){
                  double result = weight / pow(height / 100,2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bmiResultScreen(
                        isMale: isMale,
                        result: result.round(),
                        age: age,
                      ),
                      )
                  );
                },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
