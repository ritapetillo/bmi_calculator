import 'package:flutter/material.dart';

typedef void MyCallback(String type);

class MeasuresWidget extends StatelessWidget {
  MeasuresWidget(
      {required this.type, required this.value, required this.setMeasure});
  final String type;
  final int value;
  final MyCallback setMeasure;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(type.toUpperCase(),
              style: TextStyle(fontSize: 18, color: Colors.grey)),
          SizedBox(height: 10),
          Text('${value.toInt()}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                
               FloatingActionButton(onPressed: (){setMeasure('add');}, child: Icon(Icons.add),mini: true,
                  backgroundColor: Colors.indigo[800],),
                  FloatingActionButton(onPressed: (){setMeasure('minus');}, child: Icon(Icons.remove),mini: true,
                  backgroundColor: Colors.indigo[800],)
              ],)
          
        ]);
  }
}
