import 'package:dio/dio.dart';
import 'package:flutter_fundamentals/store_app/models/product_model.dart';
import 'package:retrofit/retrofit.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  @GET('/products')
  Future<List<ProductModel>> getAllProducts();

  @GET('/products/categories')
  Future<List<String>> getAllcategories();

  @GET('/products/category/{category_name}')
  Future<List<ProductModel>> getProductByCategory(@Path('category_name') String categoryName);

  @POST('/products')
  Future<ProductModel> addProduct(
    @Header('Content-Type') String contentType,
    @Body() ProductModel productModel,
  );

  @PUT('/products/{id}')
  Future<ProductModel> updateProduct(
    @Path('id') String id,
    @Header('Content-Type') String contentType,
    @Body() ProductModel productModel,
  );
}
