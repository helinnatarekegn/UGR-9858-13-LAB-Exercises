import 'package:flutter_application_1/constant.dart';
import 'package:flutter/material.dart';

class CardContaint extends StatelessWidget {
  const CardContaint(
      {required this.data,
      required this.incrmentData,
      required this.decrementData,
      required this.label});

  final int data;
  final void Function()? incrmentData;
  final void Function()? decrementData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        label,
        style: labelStyle,
      ),
      Text(
        data.toString(),
        style: numberStyle,
      ),
      Row(
        children: [
          Expanded(
            child: FloatingActionButton(
              heroTag: "btn1",
              shape: CircleBorder(eccentricity: 0),
              onPressed: decrementData ?? () {},
              backgroundColor: Color(0xFF4C4F5E),
              child: Icon(Icons.remove),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              heroTag: "btn2",
              shape: CircleBorder(eccentricity: 0),
              onPressed: incrmentData ?? () {},
              backgroundColor: Color(0xFF4C4F5E),
              child: Icon(Icons.add),
            ),
          ),
        ],
      )
    ]);
  }
}
