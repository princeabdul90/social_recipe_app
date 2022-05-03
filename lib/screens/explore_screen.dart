import 'package:flutter/material.dart';
import 'package:recipe_app/views/today_recipe_list_view.dart';
import '../models/models.dart';
import 'package:recipe_app/api/mock_recipe_service.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockRecipeService();
  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        //todo: add nested list views
        if(snapshot.connectionState == ConnectionState.done){
          final recipes = snapshot.data?.todayRecipes ?? [];
          return TodayRecipeListView(recipes: recipes);
        }else{
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
