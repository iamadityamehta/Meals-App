import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // bottom: PreferredSize(
        //     preferredSize: const Size.fromHeight(1.0),
        //     child: Container(
        //       height: 1,
        //       color: Colors.grey,
        //     )),
        GridView(
            padding: const EdgeInsets.all(25),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20),
            children: DUMMY_CATEGORIES
                .map(
                  (catData) =>
                      CategoryItem(catData.id, catData.title, catData.color),
                )
                .toList());
  }
}