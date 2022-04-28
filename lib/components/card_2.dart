import 'package:flutter/material.dart';
import 'package:recipe_app/models/models.dart';
import 'package:recipe_app/utils/recipe_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card2({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          constraints: const BoxConstraints.expand(
            height: 450,
            width: 350,
          ),
          decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage(recipe.backgroundImage),
              fit: BoxFit.cover
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            children:  [
              AuthorCard(
                  authorName: recipe.authorName,
                  title: recipe.role,
                imageProvider:  AssetImage(recipe.profileImage),
              ),
              Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 16,
                          right: 16,
                          child: Text(recipe.title, style: RecipeTheme.lightThemeText.headline1,)),
                      Positioned(
                          bottom: 70,
                          left: 16,
                          child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(recipe.subtitle, style: RecipeTheme.lightThemeText.headline1,))),
                    ],
                  )
              ),
            ],
          ),
        ),
    );
  }
}
