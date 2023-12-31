import 'package:flutter/material.dart';
import 'package:news_app_ui/components/lists.dart';
import 'package:news_app_ui/components/newsListViewBuilder.dart';
import 'package:news_app_ui/models/categories_model.dart';
import 'package:news_app_ui/views/category_view.dart';
import '../components/category_card_list_view.dart';

class HomeScrees extends StatefulWidget {
  const HomeScrees({super.key});
  @override
  State<HomeScrees> createState() => _HomeScreesState();
}

class _HomeScreesState extends State<HomeScrees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "News",
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(text: " Cloud", style: TextStyle(color: Colors.amber))
              ]),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: Categories_List_View()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            NewsListViewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
