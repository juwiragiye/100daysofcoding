import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double BOTTOMCONTAINERHEIGHT = 80.0;
const Color REUSABLECARDCOLOR = Color(0xFF1DAD8);
const Color BOTTOMCONTAINERCOLOR = Color.fromARGB(200, 118, 200, 62);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    color: REUSABLECARDCOLOR,
                    cardChild: CardContent(
                      cardIconData: FontAwesomeIcons.mars,
                      cardText: "Male",
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: REUSABLECARDCOLOR,
                  cardChild: CardContent(
                    cardIconData: FontAwesomeIcons.venus,
                    cardText: "Female",
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: REUSABLECARDCOLOR,
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: REUSABLECARDCOLOR,
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

class CardContent extends StatelessWidget {
  const CardContent({this.cardIconData, this.cardText});

  final IconData cardIconData;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIconData,
          size: 80.0,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          cardText,
          style: TextStyle(
              color: Colors.white24,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild});
  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: cardChild,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
