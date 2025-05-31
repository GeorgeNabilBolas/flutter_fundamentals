import 'package:flutter_fundamentals/store_app/models/product_model.dart';
import 'package:flutter_fundamentals/store_app/networking/api_error_handler.dart';
import 'package:flutter_fundamentals/store_app/networking/api_result.dart';
import 'package:flutter_fundamentals/store_app/networking/web_services.dart';

class ProductRepo {
  final WebServices webServices;
  ProductRepo(this.webServices);

  Future<ApiResult<List<ProductModel>>> getAllProducts() async {
    try {
      return ApiResult.success(await webServices.getAllProducts());
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e));
    }
  }

  Future<ApiResult<List<String>>> getAllcategories() async {
    try {
      return ApiResult.success(await webServices.getAllcategories());
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e));
    }
  }

  Future<List<ProductModel>> getProductByCategory(String categoryName) async {
    return await webServices.getProductByCategory(categoryName);
  }

  Future<ProductModel> addProduct({
    required String contentType,
    required ProductModel productModel,
  }) async {
    return await webServices.addProduct(contentType, productModel);
  }

  Future<ProductModel> updateProduct({
    required String id,
    required String contentType,
    required ProductModel productModel,
  }) async {
    return await webServices.updateProduct(id, contentType, productModel);
  }
}
