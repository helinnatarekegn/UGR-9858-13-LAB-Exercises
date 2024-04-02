import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild, this.onPrass});
  final Color colour;
  final Widget cardChild;
  final void Function()? onPrass;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPrass ?? () {},
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
