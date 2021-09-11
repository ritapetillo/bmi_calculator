import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

typedef void MyCallback(double height);

class HeightWidget extends StatelessWidget {
  HeightWidget(
      {required this.type, required this.value, required this.setHeight});
  final String type;
  final double value;
  final MyCallback setHeight;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(type.toUpperCase(),
              style: TextStyle(fontSize: 18, color: Colors.grey)),
          SizedBox(height: 10),
         RichText(text: TextSpan(text:'${value.toInt()}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
               children: const <TextSpan>[
      TextSpan(text: 'cm',style: TextStyle(fontSize: 18, color: Colors.grey)),
    ],
              )),
            

        
              
          SliderTheme(data: SliderTheme.of(context).copyWith(
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
            overlayColor: Color(0x29EB1555),
            thumbColor: Color(0xFFEB1555), 
            activeTrackColor: kbottomContainerColor,
          ), child:    Slider(
            value: value,
            onChanged: (double height) {
              setHeight(height);
            },
            min: 0,
            max: 250,
          ))    
      
        ]);
  }
}
