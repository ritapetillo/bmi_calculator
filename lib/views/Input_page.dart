import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/views/ResultPage.dart';
import 'package:bmi_calculator/views/widgets/bottom_button.dart';
import 'package:bmi_calculator/views/widgets/card_widget.dart';
import 'package:bmi_calculator/views/widgets/gender__widget.dart';
import 'package:bmi_calculator/views/widgets/height_widget.dart';
import 'package:bmi_calculator/views/widgets/measures_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  kGenders selectedGender = kGenders.male;
  double selectHeight = 165.0;
  int selectWeight = 50;
  int selectAge = 20;

  void setWeight(String type) {
    setState(() {
      if (type == 'add') {
        selectWeight += 1;
      } else {
        selectWeight -= 1;
      }
    });
  }

  void setAge(String type) {
    setState(() {
      if (type == 'add') {
        selectAge += 1;
      } else {
        selectAge -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(children: [
                CardWidget(
                    onPress: () {
                      setState(() {
                        selectedGender = kGenders.male;
                      });
                    },
                    colorCard: selectedGender == kGenders.male
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: GenderCard(
                      icon: FontAwesomeIcons.mars,
                      text: "Male",
                    )),
                CardWidget(
                    onPress: () {
                      setState(() {
                        selectedGender = kGenders.female;
                      });
                    },
                    colorCard: selectedGender != kGenders.female
                        ? kinactiveCardColor
                        : kactiveCardColor,
                    cardChild: GenderCard(
                      icon: FontAwesomeIcons.venus,
                      text: "Female",
                    )),
              ]),
            ),
            Container(
              width: double.infinity,
              // height: kbottomContainerHeight,
              child: CardWidget(
                colorCard: kinactiveCardColor,
                cardChild: HeightWidget(
                  value: selectHeight,
                  type: "Height",
                  setHeight: (double heigth) {
                    setState(() => {selectHeight = heigth});
                  },
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CardWidget(
                    colorCard: kinactiveCardColor,
                    cardChild: MeasuresWidget(
                      type: 'weight',
                      value: selectWeight,
                      setMeasure: setWeight,
                    ),
                  ),
                  CardWidget(
                    colorCard: kinactiveCardColor,
                    cardChild: MeasuresWidget(
                      type: 'age',
                      value: selectAge,
                      setMeasure: setAge,
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                onTap: () {
                  CalculatorBrain calc = CalculatorBrain(
                      height: selectHeight.toInt(), weight: selectWeight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage( calc.calculateBMI(),calc.getResult(), calc.getInterpretation())));

                  // Navigator.pushNamed(context, '/result');
                },
                buttonTitle: 'calculate')
          ],
        ));
  }
}
