import 'package:flutter/material.dart';
import 'package:recipe_app/utils/recipe_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = "Editor\'s Choice";
  final String title = "The Art of Dough";
  final String description = "Learn to make the perfect bread";
  final String chef = "Ray Wenderlich";

  //todo: position text on different position on screen

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/mag1.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Stack(
          children: [
            Text(
              category,
              style: RecipeTheme.darkThemeText.bodyText1,
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
            ),
          ],
        ),
      ),
    );
  }
}
