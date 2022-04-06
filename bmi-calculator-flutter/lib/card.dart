import 'package:flutter/material.dart';

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
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
