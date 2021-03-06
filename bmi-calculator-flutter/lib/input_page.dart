import 'package:bmi_calculator/gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;

  void updateColor({Gender selectedGender}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? kActiveBackground
                          : kInactiveBacgroundColor,
                      cardChild: CardContent(
                        cardIconData: FontAwesomeIcons.mars,
                        cardText: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female
                          ? kActiveBackground
                          : kInactiveBacgroundColor,
                      cardChild: CardContent(
                        cardIconData: FontAwesomeIcons.venus,
                        cardText: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveBackground,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    textAlign: TextAlign.center,
                    style: kLabelStyle,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: KBigLabelStyle,
                      ),
                      Text(
                        "CM",
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  Slider(
                    onChanged: (double val) {
                      setState(() {
                        height = val.toInt();
                      });
                    },
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: Colors.white,
                    inactiveColor: kBottomContainerColor,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveBackground,
              cardChild: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveBackground,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              textBaseline: TextBaseline.alphabetic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("50", style: KBigLabelStyle),
                                Text(
                                  "Kg",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            ButtonRow()
                          ]),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveBackground,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              textBaseline: TextBaseline.alphabetic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("18", style: KBigLabelStyle),
                                Text(
                                  "",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            ButtonRow(),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomHeight,
          )
        ],
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => print("Add age"),
          child: Icon(
            Icons.add,
            size: 50,
          ),
        ),
        GestureDetector(
          onTap: () => print("Drecease age"),
          child: Icon(
            Icons.remove,
            size: 50,
          ),
        ),
      ],
    );
  }
}
