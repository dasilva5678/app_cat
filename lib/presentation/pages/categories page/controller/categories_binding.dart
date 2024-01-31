import 'dart:io';

import 'package:get/get.dart';
import 'package:search_address/core/http/client_http.dart';
import 'package:search_address/data/datasource/get_categories_datasources/get_categories_datasource_impl.dart';
import 'package:search_address/data/repository_impl/get_categories_repository_impl/get_categories_repository_impl.dart';
import 'package:search_address/domain/usecase/get_categories_usecases/get_categories_usecase_impl.dart';
import 'package:search_address/presentation/pages/categories%20page/controller/categories_controller.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ClientHttp());

//SELECIONAR CATEGORIAS
    ///Datasource
    Get.lazyPut(
        () => GetCategoriesDataSourceImpl(client: Get.find<ClientHttp>()));
//Repository
    Get.lazyPut(() =>
        GetCategoriesRepositoryImpl(Get.find<GetCategoriesDataSourceImpl>()));
//Usecase
    Get.lazyPut(() =>
        GetCategoriesUsecaseImpl(Get.find<GetCategoriesRepositoryImpl>()));
//Datasource
    Get.lazyPut(
        () => GetCategoriesDataSourceImpl(client: Get.find<ClientHttp>()));

    Get.put(
      CategoriesController(
        Get.find<GetCategoriesUsecaseImpl>(),
      ),
      permanent: true,
    );
  }
}
