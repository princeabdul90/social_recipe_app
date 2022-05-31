import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/utils/recipe_theme.dart';
import 'home_page.dart';
import 'models/models.dart';

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
      theme:theme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
          child: const HomePage(),
      ),
    );
  }
}

