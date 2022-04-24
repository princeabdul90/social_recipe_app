import 'package:flutter/material.dart';
import 'package:recipe_app/utils/recipe_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.title,
      this.imageProvider})
      : super(key: key);

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(imageRadius: 28, imageProvider: imageProvider,),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorName, style: RecipeTheme.lightThemeText.headline2,),
                  Text(title, style: RecipeTheme.lightThemeText.headline3,),
                ],
              )
            ],
          ),
          //todo: show snackBar when the user tap on favorite button.
          IconButton(
            onPressed: () {
              const snackBar =  SnackBar(content: Text("Favorite Pressed"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
