import 'package:flutter/material.dart';
import 'package:news_app_ui/components/newsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.transparent,
        title: Text(category),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          NewsListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
