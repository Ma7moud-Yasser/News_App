import 'package:flutter/material.dart';
import 'package:news_app_ui/models/categories_model.dart';
import 'package:news_app_ui/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final Categories_Model category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  CategoryView(category: category.categoryName),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 105,
          width: 190,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.imageAssetUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
      ),
    );
  }
}
