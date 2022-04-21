import 'package:flutter/material.dart';
import 'package:recipe_app/components/custom_card.dart';
import 'package:recipe_app/theme/theme.dart';

class Card3 extends CustomCard {
  final dynamic cardAssetImage;
  final String title;

  Card3({Key? key, this.cardAssetImage, required this.title})
      : super(
          key: key,
          cardImage: AssetImage(cardAssetImage),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
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
                      title,
                      style: RecipeTheme.darkThemeText.headline2,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 16,
                  children: [
                    Chip(
                      onDeleted: () => print('delete'),
                      label: Text(
                        'Healthy',
                        style: RecipeTheme.darkThemeText.bodyText1,
                      ),
                      backgroundColor: Colors.black.withOpacity(0.4),
                    ),
                    Chip(
                      onDeleted: () => print('delete'),
                      label: Text(
                        'Veggan',
                        style: RecipeTheme.darkThemeText.bodyText1,
                      ),
                      backgroundColor: Colors.black.withOpacity(0.4),
                    ),
                    Chip(
                      onDeleted: () => print('delete'),
                      label: Text(
                        'Mint',
                        style: RecipeTheme.darkThemeText.bodyText1,
                      ),
                      backgroundColor: Colors.black.withOpacity(0.4),
                    ),
                    Chip(
                      onDeleted: () => print('delete'),
                      label: Text(
                        'Lemongrass',
                        style: RecipeTheme.darkThemeText.bodyText1,
                      ),
                      backgroundColor: Colors.black.withOpacity(0.4),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
}
