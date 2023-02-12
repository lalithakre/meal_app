import 'package:flutter/material.dart';
import '../../widgets/category_item.dart';
import '../dummy_data.dart';
// import 'package:meal_app/main.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 199, 165, 165),
      appBar: AppBar(
          title: Center(
              child: const Text(
        "MealMate",
        style: TextStyle(fontSize: 25),
      ))),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: dummyCategory
            .map((catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            maxCrossAxisExtent: 200),
      ),
    );
  }
}
