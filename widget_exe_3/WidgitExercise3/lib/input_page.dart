import 'constant.dart';
import 'icon_containt.dart';
import "reusable_card.dart";
import 'reusable_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextStyle labelStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inActiveColor;
  Color femaleColor = inActiveColor;
  int sliderValue = 180;
  int weight = 60;
  int age = 20;

  void incrmentData(String data) {
    setState(() {
      data == "age" ? age++ : weight++;
    });
  }

  void decrementData(String data) {
    setState(() {
      data == "age" ? age-- : weight--;
    });
  }

  void howIsActive(Gender gender) {
    setState(() {
      maleColor = gender == Gender.Male
          ? maleColor == inActiveColor
              ? activeColor
              : inActiveColor
          : inActiveColor;
      femaleColor = gender == Gender.Female
          ? femaleColor == inActiveColor
              ? activeColor
              : inActiveColor
          : inActiveColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPrass: () {
                        howIsActive(Gender.Male);
                      },
                      colour: maleColor,
                      cardChild: CardChild(
                        iconName: Icons.mail,
                        text: "Male",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPrass: () {
                        howIsActive(Gender.Female);
                      },
                      colour: femaleColor,
                      cardChild: CardChild(
                        iconName: Icons.female,
                        text: "Female",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height", style: labelStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(sliderValue.toString(), style: numberStyle),
                        Text("cm", style: unitStyle),
                      ],
                    ),
                    Slider(
                      value: sliderValue.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Colors.pink,
                      onChanged: (double value) {
                        setState(() {
                          sliderValue = value.toInt();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeColor,
                      cardChild: CardContaint(
                        label: "Weight",
                        data: weight,
                        incrmentData: () {
                          incrmentData("weight");
                        },
                        decrementData: () {
                          decrementData("weight");
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeColor,
                      cardChild: CardContaint(
                        label: "Age",
                        data: age,
                        incrmentData: () {
                          incrmentData("age");
                        },
                        decrementData: () {
                          decrementData("age");
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.only(top: 5.0),
                  width: double.infinity,
                  height: 60.0,
                  color: Colors.pink,
                  child: Center(
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  )),
            ),
          ],
        ));
  }
}
