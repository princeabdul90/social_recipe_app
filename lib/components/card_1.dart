import 'package:flutter/material.dart';
import 'package:recipe_app/components/custom_card.dart';
import 'package:recipe_app/theme/theme.dart';

class Card1 extends CustomCard {

  final String category;
  final String title;
  final String description;
  final String chef;
  final dynamic cardAssetImage;

  Card1({Key? key,
    required this.category,
    required this.title,
    required this.description,
    required this.chef,
    required this.cardAssetImage
  }) : super(
      key: key,
    cardHeight: 480,
    cardWidth: 380,
    cardImage: AssetImage(cardAssetImage),
    child: Container(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Text(
            category,
            style: RecipeTheme.darkThemeText.headline3,
          ),
          Positioned(
            top: 20,
            child: Text(
              title,
              style: RecipeTheme.darkThemeText.headline2,
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            child: Text(
              description,
              style: RecipeTheme.darkThemeText.bodyText1,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Text(
              chef,
              style: RecipeTheme.darkThemeText.bodyText1,
            ),
          )
        ],
      ),
    ),

  );




}
