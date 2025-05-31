import 'package:json_annotation/json_annotation.dart';
part 'product_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductModel {
  final int? id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  @JsonKey(name: 'rating')
  final ProductRating? productRating;
  ProductModel({
    this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    this.productRating,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductRating {
  final num? rate, count;
  ProductRating({this.rate, this.count});

  factory ProductRating.fromJson(Map<String, dynamic> json) => _$ProductRatingFromJson(json);

  Map<String, dynamic> toJson() => _$ProductRatingToJson(this);
}
