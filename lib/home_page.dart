import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/screens/explore_screen.dart';
import 'package:recipe_app/screens/grocery_screen.dart';
import 'package:recipe_app/screens/recipe_screen.dart';
import 'models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<Widget> pages = <Widget>[
     ExploreScreen(),
    RecipeScreen(),
    const GroceryScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child){
      return Scaffold(
        appBar: AppBar(
          title: Text('Recipe App', style: Theme.of(context).textTheme.headline6,),
        ),
        body: IndexedStack(index: tabManager.selectedTab, children: pages,),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tabManager.selectedTab,
          onTap: (index){
            tabManager.goToTab(index);
          },
          selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Recipe'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'To buy'),
          ],
        ),
      );
    });
  }
}
