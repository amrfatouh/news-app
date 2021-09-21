class Article {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  Article.fromJson(Map<String, dynamic> json)
      : urlToImage = json['urlToImage'] ??
            'https://via.placeholder.com/150?text=No%20Image',
        author = json['author'] ?? 'No Author',
        title = json['title'] ?? 'No Title',
        description = json['description'] ?? 'No Description',
        url = json['url'] ?? 'https://example.com/',
        publishedAt = json['publishedAt'] ?? '2000-01-01',
        content = json['content'] ?? 'No Content';
}
