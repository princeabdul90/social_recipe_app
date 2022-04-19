import 'package:flutter/material.dart';
import 'package:recipe_app/utils/recipe_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String authorName = "Mike Katz";
  final String title = "Smoothie connoisseur";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          constraints: const BoxConstraints.expand(
            height: 450,
            width: 350,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/mag2.png"),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            children:  [
              AuthorCard(
                  authorName: authorName,
                  title: title,
                imageProvider: const AssetImage("assets/images/person_katz.jpeg"),
              ),
              Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 16,
                          right: 16,
                          child: Text('Recipes', style: RecipeTheme.lightThemeText.headline1,)),
                      Positioned(
                          bottom: 70,
                          left: 16,
                          child: RotatedBox(
                              quarterTurns: 3,
                              child: Text('Smoothies', style: RecipeTheme.lightThemeText.headline1,))),
                    ],
                  )
              ),
            ],
          ),
        ),
    );
  }
}
