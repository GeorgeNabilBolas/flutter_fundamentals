import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_appbar_widget.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: NewsAppAppbarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const NewsAppbarWidget(),
            NewsBodyWidget(category: category),
          ],
        ),
      ),
    );
  }
}
