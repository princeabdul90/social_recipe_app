import 'package:flutter/material.dart';
import '../components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  List<Widget> pages = <Widget>[
    Card1(
        category: "Editor's choice",
        title: "The Art of Dough",
        description: "Learn to make the perfect bread",
        chef: "Ray Wenderlich",
        cardAssetImage: "assets/images/mag1.png"
    ),
    Card2(
        authorName: "Mike Katz",
        title: "Smoothies Connoisseur",
        authorImage: "assets/images/person_katz.jpeg",
        cardAssetImage: "assets/images/mag2.png"
    ),
    Card3(
      title: "Recipe Trends",
      cardAssetImage: "assets/images/mag3.png",
    )
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipe App',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onTappedItem,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 3',
          ),
        ],
      ),
    );
  }
}
