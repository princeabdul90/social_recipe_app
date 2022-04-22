import 'package:flutter/material.dart';
import 'package:recipe_app/components/cirlce_image.dart';
import 'package:recipe_app/theme/theme.dart';

class AuthorCard extends StatefulWidget {
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
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;

  void _onTappedFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleImage(
              imageProvider: widget.imageProvider,
              imageRadius: 28,
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.authorName,
                  style: RecipeTheme.lightThemeText.headline2,
                ),
                Text(
                  widget.title,
                  style: RecipeTheme.lightThemeText.headline3,
                )
              ],
            )
          ],
        ),
        IconButton(
          onPressed: _onTappedFavorite,
          icon: Icon(
            _isFavorited ? Icons.favorite : Icons.favorite_border,
            size: 30,
            color: Colors.red[400],
          ),
        ),
      ],
    );
  }
}
