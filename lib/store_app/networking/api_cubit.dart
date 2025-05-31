import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/store_app/networking/api_result.dart';
import 'package:flutter_fundamentals/store_app/networking/api_state.dart';
import 'package:flutter_fundamentals/store_app/networking/product_repo.dart';

class ApiCubit extends Cubit<ApiState> {
  final ProductRepo productRepo;
  ApiCubit(this.productRepo) : super(const ApiState.init());
  void fetchGetAllProducts() async {
    emit(const ApiState.loading());
    final response = await productRepo.getAllProducts();
    response.when(
        success: (products) => emit(ApiState.getAllProducts(products)),
        failure: (failureModel) => emit(ApiState.failure(failureModel)));
  }
}
