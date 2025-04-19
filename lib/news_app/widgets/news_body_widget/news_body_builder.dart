import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/news_app/models/news_api_model.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget/news_body_item_builder/news_body_image_builder.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget/news_body_item_builder/news_body_subtitle_builder.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget/news_body_item_builder/news_body_title_builder.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget/webview_builder.dart';

class NewsBodyBuilder extends StatelessWidget {
  const NewsBodyBuilder({
    super.key,
    required this.newsApiModel,
  });
  final List<NewsApiModel> newsApiModel;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewbuilder(url: newsApiModel[index].url),
          ),
        ),
        child: Column(
          children: [
            NewsBodyImageBuilder(image: newsApiModel[index].image),
            NewsBodyTitleBuilder(title: newsApiModel[index].title),
            NewsBodySubtitleBuilder(subtitle: newsApiModel[index].description),
          ],
        ),
      ),
      itemCount: newsApiModel.length,
    );
  }
}
