import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/article.dart';
import 'package:news_app/view_models/article_view_model.dart';

const API_KEY = '51116bf002924dba9d253d6063b02566';

class ArticleListViewModel with ChangeNotifier {
  List<ArticleViewModel> articleViewModels = [];

  Future<void> fetchAllArticles() async {
    Uri uri = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$API_KEY');
    var response = await http.get(uri);
    List articles = json.decode(response.body)['articles'];
    articleViewModels = articles.map((article) {
      Article articleModel = Article.fromJson(article);
      return ArticleViewModel(articleModel);
    }).toList();
    notifyListeners();
  }
}
