import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  final Color categoryColor;
  CategoryMealsScreen(this.categoryId, this.categoryTitle, this.categoryColor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: categoryColor,
      ),
      backgroundColor: categoryColor,
      body: Text(categoryId),
    );
  }
}
