import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/view_models/article_view_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(this.article, {Key? key}) : super(key: key);

  final ArticleViewModel article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: article.urlToImage,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              imageBuilder: (context, imageProvider) => Container(
                child: Image(
                  height: 250,
                  width: double.infinity,
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(article.title),
                  Text(article.author),
                  Text(article.publishedAt),
                  Text(article.description),
                  Text(article.content),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
