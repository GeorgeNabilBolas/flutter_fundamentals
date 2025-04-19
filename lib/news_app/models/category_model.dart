class CategoryModel {
  final String title;
  final String image;
  CategoryModel({required this.title, required this.image});
}

List<CategoryModel> categoryList = [
  CategoryModel(title: 'Business', image: 'lib/news_app/images/business.jpg'),
  CategoryModel(title: 'Entertainment', image: 'lib/news_app/images/entertainment.jpg'),
  CategoryModel(title: 'General', image: 'lib/news_app/images/general.jpg'),
  CategoryModel(title: 'Health', image: 'lib/news_app/images/health.avif'),
  CategoryModel(title: 'Science', image: 'lib/news_app/images/science.avif'),
  CategoryModel(title: 'Sports', image: 'lib/news_app/images/sports.jpg'),
  CategoryModel(title: 'Technology', image: 'lib/news_app/images/technology.jpeg'),
];
