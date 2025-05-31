import 'package:flutter_fundamentals/store_app/models/failure_model.dart';
import 'package:flutter_fundamentals/store_app/models/product_model.dart';

abstract class ApiState {
  const ApiState._();
  const factory ApiState.init() = InitState;
  const factory ApiState.loading() = LoadingState;
  const factory ApiState.getAllProducts(List<ProductModel> products) = GetAllProductState;
  const factory ApiState.failure(FailureModel failureModel) = FailureState;
}

class InitState extends ApiState {
  const InitState() : super._();
}

class LoadingState extends ApiState {
  const LoadingState() : super._();
}

class GetAllProductState extends ApiState {
  final List<ProductModel> products;
  const GetAllProductState(this.products) : super._();
}

class FailureState extends ApiState {
  final FailureModel failureModel;
  const FailureState(this.failureModel) : super._();
}
