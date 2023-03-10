import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text(
          'Sorry , You have no favorites currently ! 🙁',
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
            affordability: favoriteMeals[index].affordability,
            complexity: favoriteMeals[index].complexity,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
