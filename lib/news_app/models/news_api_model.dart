class NewsApiModel {
  final String title;
  final String image;
  final String description;
  final String url;
  NewsApiModel({
    required this.title,
    required this.image,
    required this.description,
    required this.url,
  });
  factory NewsApiModel.fromJson(json) {
    return NewsApiModel(
      title: json['title'] ?? 'Title not available',
      image: json['urlToImage'] ?? 'lib/news_app/images/notfound.png',
      description: json['description'] ?? 'Description not available',
      url: json['url'] ?? 'URL not available',
    );
  }
  @override
  String toString() {
    return 'NewsApiModel(title: $title,\n image: $image,\n description: $description)\n\n';
  }
}
