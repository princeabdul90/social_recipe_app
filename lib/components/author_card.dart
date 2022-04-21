import 'package:flutter/material.dart';
import 'package:recipe_app/components/cirlce_image.dart';
import 'package:recipe_app/theme/theme.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleImage(imageProvider: imageProvider, imageRadius: 28,),
            const SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(authorName, style: RecipeTheme.lightThemeText.headline2,),
                Text(title, style: RecipeTheme.lightThemeText.headline3,)
              ],
            )
          ],
        ),
        IconButton(
            onPressed: (){
              const snackBar = SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(Icons.favorite_border, size: 30, color: Colors.grey[400],)),
      ],
    );
  }
}
