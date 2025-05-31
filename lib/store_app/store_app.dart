import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/store_app/models/product_model.dart';
import 'package:flutter_fundamentals/store_app/networking/api_cubit.dart';
import 'package:flutter_fundamentals/store_app/networking/api_state.dart';
import 'package:flutter_fundamentals/store_app/networking/product_repo.dart';
import 'package:flutter_fundamentals/store_app/networking/service_locator.dart';
import 'package:flutter_fundamentals/store_app/networking/web_services.dart';
import 'package:flutter_fundamentals/store_app/utils/init_dio.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiCubit(getIt<ProductRepo>())..fetchGetAllProducts(),
      child: const Scaffold(
        appBar: StoreAppBar(),
        body: StoreAppBody(),
      ),
    );
  }
}

class StoreAppBody extends StatelessWidget {
  const StoreAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiCubit, ApiState>(builder: (context, state) {
      log('State: $state');
      if (state is LoadingState) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is FailureState) {
        return Column(
          children: [
            Icon(state.failureModel.icon, color: Colors.red, size: 50),
            Text(
              'Error: ${state.failureModel.title}',
              style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              'Error: ${state.failureModel.subtitle}/nStatus Code: ${state.failureModel.statusCode}',
              style: const TextStyle(color: Colors.red, fontSize: 16),
            ),
          ],
        );
      } else if (state is GetAllProductState) {
        final products = state.products;
        return ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ListTile(
              title: Text(product.title),
              subtitle: Text('\$${product.price}'),
            );
          },
        );
      }
      return const SizedBox.shrink();
    });
  }
}

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: const Text(
        'Store App',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
