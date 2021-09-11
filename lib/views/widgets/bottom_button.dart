import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
        // Navigator.pushNamed(context, '/result');
      },
      child: Container(
        height: kbottomContainerHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kbottomContainerColor,
        ),
        child: Text(
          buttonTitle.toUpperCase(),
          style: kbottomTextStyle,
        ),
      ),
    );
  }
}
