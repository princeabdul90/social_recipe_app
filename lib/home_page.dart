import 'package:flutter/material.dart';
import 'package:recipe_app/screens/explore_screen.dart';
import 'package:recipe_app/screens/recipe_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _isSelectedIndex = 0;

  List<Widget> pages = <Widget>[
     ExploreScreen(),
    RecipeScreen(),
    Container(color: Colors.red,),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _isSelectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App', style: Theme.of(context).textTheme.headline6,),
      ),
      body: pages[_isSelectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _isSelectedIndex,
        onTap: _onTappedItem,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Recipe'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'To buy'),
        ],
      ),
    );
  }
}
