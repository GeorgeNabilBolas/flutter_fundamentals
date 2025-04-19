import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/news_app/models/category_model.dart';
import 'package:flutter_fundamentals/news_app/news_app.dart';
import 'package:flutter_fundamentals/news_app/widgets/ctegory_list_widget/category_builder.dart';

class CtegoryListWidget extends StatelessWidget {
  const CtegoryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) => CategoryBuilder(
            category: categoryList[index],
          ),
        ),
      ),
    );
  }
}
