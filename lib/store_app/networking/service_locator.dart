import 'package:dio/dio.dart';
import 'package:flutter_fundamentals/store_app/networking/product_repo.dart';
import 'package:flutter_fundamentals/store_app/networking/web_services.dart';
import 'package:flutter_fundamentals/store_app/utils/init_dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupDependinces() {
  getIt.registerLazySingleton<Dio>(() => initDio());
  getIt.registerLazySingleton<WebServices>(() => WebServices(getIt<Dio>()));
  getIt.registerLazySingleton<ProductRepo>(() => ProductRepo(getIt<WebServices>()));
}
