import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui/models/news_tile_model.dart';
import 'package:news_app_ui/views/webView.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsTile extends StatefulWidget {
  const NewsTile({Key? key, required this.news}) : super(key: key);
  final ArticleModel news;

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    // Initialize the WebViewController here if needed
    // controller = WebViewController();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyWebView(news: widget.news),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                widget.news.Picture_Url ??
                    "https://www.racearchive.org.uk/wp-content/themes/dizy/assets/images/no-image/No-Image-Found-400x264.png",
                fit: BoxFit.cover,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return CircularProgressIndicator();
                  }
                },
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  print("Error loading image: $error");
                  return Icon(Icons.error);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.news.headerTitle,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.news.subTitle ?? " ",
              style: TextStyle(fontSize: 16),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
