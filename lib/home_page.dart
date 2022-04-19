import 'package:flutter/material.dart';
import '../components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    //todo: replace with card 3
    Container(color: Colors.lightBlueAccent,),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Recipe App', style: Theme.of(context).textTheme.headline6,),
      ),
      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTappedItem,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'card 1',),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'card 2',),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'card 3',),
        ],
      ),
    );
  }
}
