import 'package:flutter/material.dart';
import 'package:recipe_app/theme/theme.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = RecipeTheme.dark();
    return MaterialApp(
      title: 'Recipe App',
      theme: theme,
      home: const HomePage(),
    );
  }
}

