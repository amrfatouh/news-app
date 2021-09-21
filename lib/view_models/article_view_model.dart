import 'package:news_app/models/article.dart';

class ArticleViewModel {
  Article article;

  ArticleViewModel(this.article);

  String get author => article.author;
  String get title => article.title;
  String get description => article.description;
  String get url => article.url;
  String get urlToImage => article.urlToImage;
  String get publishedAt => article.publishedAt;
  String get content => article.content;
}
