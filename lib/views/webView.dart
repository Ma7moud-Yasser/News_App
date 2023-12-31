import 'package:flutter/material.dart';
import 'package:news_app_ui/models/news_tile_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  final ArticleModel news;

  const MyWebView({super.key, required this.news});
  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('WebView Example'),
      // ),
      body: SafeArea(
        child: WebView(
          initialUrl: "${widget.news.newsUrl}",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
