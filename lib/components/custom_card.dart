import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final dynamic cardImage;
  final double cardBorderRadius;
  final double cardHeight;
  final double cardWidth;

  const CustomCard(
      {Key? key,
      required this.child,
      required this.cardImage,
      this.cardBorderRadius = 10.0,
      this.cardHeight = 450,
      this.cardWidth = 350,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          constraints: BoxConstraints.expand(
            height: cardHeight,
            width: cardWidth,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: cardImage,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(cardBorderRadius)),
          ),
          child: child,
    ));
  }
}
