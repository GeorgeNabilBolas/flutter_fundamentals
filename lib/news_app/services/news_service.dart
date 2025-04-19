import 'package:dio/dio.dart';
import 'package:flutter_fundamentals/news_app/models/news_api_model.dart';

class NewsService {
  NewsService(this.dio);
  final Dio dio;
  Future<List<NewsApiModel>> fetchNews({String? category}) async {
    Response response;
    response = await dio.get(
      'https://newsapi.org/v2/everything',
      queryParameters: {
        'apiKey': '9a89405bb50f4bf482bfa40c5dea6c41',
        'language': 'en',
        'q': category ?? 'general',
      },
    );
    final List<NewsApiModel> news = [];
    for (var article in response.data['articles']) {
      news.add(NewsApiModel.fromJson(article));
    }
    return news;
  }
}
