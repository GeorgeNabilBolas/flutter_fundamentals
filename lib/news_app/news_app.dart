import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/news_app/widgets/ctegory_list_widget.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_appbar_widget.dart';
import 'package:flutter_fundamentals/news_app/widgets/news_body_widget.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: NewsAppAppbarWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            NewsAppbarWidget(),
            CtegoryListWidget(),
            NewsBodyWidget(),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
