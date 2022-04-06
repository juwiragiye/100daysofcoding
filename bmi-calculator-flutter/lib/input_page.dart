import 'package:bmi_calculator/gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card.dart';

const double BOTTOMCONTAINERHEIGHT = 80.0;
const Color ACTIVEBACKGROUNGCOLOR = Color.fromARGB(15, 159, 46, 17);
const Color INACTIVEBACKGROUNDCOLOR = Color(0xFF1B328);
const Color BOTTOMCONTAINERCOLOR = Color(0xFF87FCC4);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = INACTIVEBACKGROUNDCOLOR;
  Color femaleCardColor = INACTIVEBACKGROUNDCOLOR;

  void updateColor({Gender gender}) {
    switch (gender) {
      case Gender.male:
        {
          maleCardColor = ACTIVEBACKGROUNGCOLOR;
          femaleCardColor = INACTIVEBACKGROUNDCOLOR;
        }
        break;
      case Gender.female:
        {
          femaleCardColor = ACTIVEBACKGROUNGCOLOR;
          maleCardColor = INACTIVEBACKGROUNDCOLOR;
        }
        break;
      default:
        {
          maleCardColor = INACTIVEBACKGROUNDCOLOR;
          femaleCardColor = INACTIVEBACKGROUNDCOLOR;
        }
    }
  }

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
                        updateColor(gender: Gender.male);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
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
                        updateColor(gender: Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
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
              color: ACTIVEBACKGROUNGCOLOR,
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: ACTIVEBACKGROUNGCOLOR,
            ),
          ),
          Container(
            color: BOTTOMCONTAINERCOLOR,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: BOTTOMCONTAINERHEIGHT,
          )
        ],
      ),
    );
  }
}
