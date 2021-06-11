import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'reuseable_card.dart';
import 'BottomButton.dart';

class resultPage extends StatelessWidget {
  resultPage(@required this.result, @required this.resultText,
      @required this.interpretition);

  final String result;
  final String resultText;
  final String interpretition;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reuseable_Card(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: kresulttextStyle,
                  ),
                  Text(
                    result,
                    style: kResultNumberStyle,
                  ),
                  Text(
                    interpretition,
                    textAlign: TextAlign.center,
                    style: kresultstringtextstyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(() {
            Navigator.pushNamed(context, '/');
          }, 'RE-CALCULATE')
        ],
      ),
    );
  }
}
