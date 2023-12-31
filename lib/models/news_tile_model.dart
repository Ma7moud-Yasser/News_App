class ArticleModel {
  final String? Picture_Url;
  final String headerTitle;
  final String subTitle;
  final String newsUrl;

  const ArticleModel({
    required this.Picture_Url,
    required this.headerTitle,
    required this.subTitle,
    required this.newsUrl,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      Picture_Url: json["urlToImage"],
      headerTitle: json["title"] ?? "No Title",
      subTitle: json["description"] ?? "No Description",
      newsUrl: json["url"],
    );
  }
}
