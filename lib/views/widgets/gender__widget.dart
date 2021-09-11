import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String text;
  GenderCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(icon, size: 80.0, color: Colors.white),
        SizedBox(height: 20,),
        Text(text.toUpperCase(), style: TextStyle(fontSize: 18.0, color: Colors.white))
        
      ]
      
    ));
  }
}