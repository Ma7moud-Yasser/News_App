import 'package:flutter/material.dart';
import 'package:news_app_ui/models/news_tile_model.dart';
import 'package:news_app_ui/views/category_view.dart';
import 'news_tile.dart';

class News_List_View extends StatelessWidget {
  List<ArticleModel> articles;
  News_List_View({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) => NewsTile(news: articles[index])));
  }
}
