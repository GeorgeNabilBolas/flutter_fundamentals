import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/news_app/models/category_model.dart';
import 'package:flutter_fundamentals/news_app/models/news_api_model.dart';
import 'package:flutter_fundamentals/news_app/services/news_service.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_appbar_widget.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget/news_body_builder.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget/news_body_item_builder/news_body_image_builder.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget/news_body_item_builder/news_body_subtitle_builder.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget/news_body_item_builder/news_body_title_builder.dart';
import 'package:dio/dio.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsBodyWidget extends StatefulWidget {
  const NewsBodyWidget({
    super.key,
    this.category,
  });
  final String? category;
  @override
  State<NewsBodyWidget> createState() => _NewsBodyWidgetState();
}

class _NewsBodyWidgetState extends State<NewsBodyWidget> {
  late Future<List<NewsApiModel>> future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).fetchNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text('Error '),
            ),
          );
        } else if (snapshot.data!.isEmpty || !snapshot.hasData) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text('No data'),
            ),
          );
        } else {
          return NewsBodyBuilder(newsApiModel: snapshot.data!);
        }
      },
    );
  }
}
