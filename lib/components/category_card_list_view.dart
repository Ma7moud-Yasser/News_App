import 'package:flutter/material.dart';
import 'category_card.dart';
import 'lists.dart';

class Categories_List_View extends StatelessWidget {
  const Categories_List_View({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) =>
            CategoryCard(category: categories[index]),
      ),
    );
  }
}
