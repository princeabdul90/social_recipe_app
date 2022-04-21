import 'package:flutter/material.dart';
import 'package:recipe_app/components/author_card.dart';
import 'package:recipe_app/components/custom_card.dart';
import 'package:recipe_app/theme/theme.dart';

class Card2 extends CustomCard {
  final dynamic cardAssetImage;
  final dynamic authorImage;
  final String authorName;
  final String title;

  Card2({
    Key? key,
    required this.cardAssetImage,
    required this.authorImage,
    required this.authorName,
    required this.title,
  }) : super(
            key: key,
            cardImage: AssetImage(cardAssetImage),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  AuthorCard(
                    authorName: authorName,
                    title: title,
                    imageProvider: AssetImage(authorImage),
                  ),
                  Expanded(
                      child: Stack(
                    children: [
                      Positioned(
                          bottom: 70,
                          left: 16,
                          child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'Smoothies',
                                style: RecipeTheme.lightThemeText.headline1,
                              ))),
                      Positioned(
                          bottom: 20,
                          right: 16,
                          child: Text(
                            'Recipes',
                            style: RecipeTheme.lightThemeText.headline1,
                          )),
                    ],
                  ))
                ],
              ),
            ));
}
