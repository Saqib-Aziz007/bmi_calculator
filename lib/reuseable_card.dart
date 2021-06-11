import 'package:flutter/material.dart';

class Reuseable_Card extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Reuseable_Card({@required this.colour, this.cardChild, this.Onpress});

  final Color colour;
  final Widget cardChild;
  final Function Onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
