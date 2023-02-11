import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;
  // final Color categoryColor;
  // CategoryMealsScreen(this.categoryId, this.categoryTitle, this.categoryColor);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryColor = routeArgs['color'];
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.center, child: Text(categoryTitle!)),
        backgroundColor: Colors.black,
      ),
      // backgroundColor: categoryColor,
      // body: ListView.builder(
      //   itemBuilder: (context, index) => {},
      //   itemCount: 10,
      // ),
    );
  }
}
