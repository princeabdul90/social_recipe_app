import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/utils/recipe_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  //todo: add Container, column, icon and text
  //todo: add chip widget on top of container

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
                image: AssetImage("assets/images/mag3.png"), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.book,
                      size: 40,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Recipe Trends',
                      style: RecipeTheme.darkThemeText.headline2,
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    Center(
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 16,
                        children: [
                          Chip(
                              label: Text(
                                'Healthy',
                                style: RecipeTheme.darkThemeText.bodyText1,
                              ),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: ()=>print("deleted"),
                          ),
                          Chip(
                            label: Text(
                              'Veggan',
                              style: RecipeTheme.darkThemeText.bodyText1,
                            ),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: ()=>print("deleted"),
                          ),
                          Chip(
                            label: Text(
                              'Mint',
                              style: RecipeTheme.darkThemeText.bodyText1,
                            ),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: ()=>print("deleted"),
                          ),
                          Chip(
                            label: Text(
                              'Lemongrass',
                              style: RecipeTheme.darkThemeText.bodyText1,
                            ),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: ()=>print("deleted"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          )),
    );
  }
}
