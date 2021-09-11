import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({required this.colorCard, required this.cardChild, this.onPress});

  Color colorCard;
  Widget cardChild;
  VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      onTap: onPress, 
      child: Container(
        child: cardChild,
        height: 200,
        width: 150,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(10),
        ),
        ));
  }
}
