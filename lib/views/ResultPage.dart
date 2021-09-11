import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/views/widgets/bottom_button.dart';
import 'package:bmi_calculator/views/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
    ResultPage(this.bmiResult, this.resultText, this.interpretation);

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Result'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                )),
            Expanded(
                child: CardWidget(
                    colorCard: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style:
                              TextStyle(fontSize: 25, color: Colors.green[200]),
                        ),
                        Text(
                          bmiResult,
                          style: TextStyle(
                              fontSize: 100, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          interpretation,
                          style:
                              TextStyle(fontSize: 25, color: Colors.green[200]),
                        ),
                      ],
                    ))),
            // SizedBox(
            //   height: 50,
            // ),
            BottomButton(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                buttonTitle: 're-calculate')
          ],
        ));
  }
}
