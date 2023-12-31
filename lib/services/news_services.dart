import 'package:dio/dio.dart';
import 'package:news_app_ui/models/news_tile_model.dart';

abstract class NewsService {
  final Dio dio = Dio();

  NewsService();
}

class News extends NewsService {
  News() : super();

  Future<List<ArticleModel>> getTopHeadLines({
    required String urlCategory,
  }) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=829f577c715c4a20b9b974fec08b42c8&category=${urlCategory}');
      final jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var articleData in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(articleData);
        articlesList.add(articleModel);
      }
      print(articlesList);
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
