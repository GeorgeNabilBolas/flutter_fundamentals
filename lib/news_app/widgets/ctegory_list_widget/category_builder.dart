import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/news_app/models/category_model.dart';
import 'package:flutter_fundamentals/news_app/widgets/ctegory_list_widget/category_body.dart';
import 'package:flutter_fundamentals/news_app/widgets/ctegory_list_widget/category_title_builder.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({
    super.key,
    required this.category,
  });
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => CategoryBody(category: category.title))),
      child: Container(
        alignment: Alignment.center,
        width: 150,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill,
          ),
        ),
        child: CategoryTitleBuilder(item: category.title),
      ),
    );
  }
}
