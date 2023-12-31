import 'package:flutter/material.dart';
import 'package:news_app_ui/components/news_tile_list_view.dart';
import 'package:news_app_ui/errors/handlingErrors.dart';
import 'package:news_app_ui/models/news_tile_model.dart';
import 'package:news_app_ui/services/news_services.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var news;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    news = News().getTopHeadLines(
      urlCategory: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: news,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.hasData);
            print(snapshot.data!);
            return News_List_View(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const ArticlesErrorMessage();
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.white,
                  strokeWidth: 1,
                ),
              ),
            );
          }
        });
  }
}
