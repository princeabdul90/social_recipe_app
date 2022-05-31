import 'package:flutter/material.dart';
import 'package:recipe_app/components/grocery_tile.dart';
import 'package:recipe_app/models/grocery_manager.dart';
import 'package:recipe_app/screens/grocery_item_screen.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;
  const GroceryListScreen({Key? key, required this.manager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groceryItems = manager.groceryItems;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];

          return Dismissible(
            key: Key(item.id),
            direction: DismissDirection.endToStart,
            background: Container(
              alignment: Alignment.centerRight,
              child: const Icon(Icons.delete_forever, size: 50.0, color: Colors.white,),
              color: Colors.red,
            ),
            onDismissed: (direction){
              manager.deleteItem(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${item.name} dismissed')),
              );
            },
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => GroceryItemScreen(
                      originalItem: item,
                        onCreate: (item){},
                        onUpdate: (item){
                          manager.updateItem(item, index);
                          Navigator.pop(context);
                        }
                    )
                ));
              },
              child: GroceryTile(
                key: Key(item.id),
                item: item,
                onComplete: (change) {
                  if (change != null) {
                    manager.completeItem(index, change);
                  }
                },
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16.0,
          );
        },
      ),
    );
  }
}
