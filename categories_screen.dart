import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../widgets/Category_item_cart.dart';


class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipes App'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catdata) => CategoryItem(
            catdata.id,
            catdata.title,
            catdata.color,
          ),
        )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 200,
        ),
      ),
    );
  }
}
