import 'package:app_cat/core/http/client_http.dart';
import 'package:app_cat/data/datasource/description_cat_datasources/description_cat_datasources_impl.dart';
import 'package:app_cat/data/repository_impl/description_cat_repository_impl/description_cat_repository_impl.dart';
import 'package:app_cat/domain/usecase/description_cat_usecases/description_cat_impl.dart';
import 'package:app_cat/presentation/pages/categories%20page/controller/description_cats_controller.dart';
import 'package:get/get.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ClientHttp());

//SELECIONAR CATEGORIAS
    ///Datasource
    Get.lazyPut(
        () => DescriptionCatDataSourceImpl(client: Get.find<ClientHttp>()));
//Repository
    Get.lazyPut(() =>
        DescriptionCatRepositoryImpl(Get.find<DescriptionCatDataSourceImpl>()));
//Usecase
    Get.lazyPut(() =>
        DescriptionCatUsecaseImpl(Get.find<DescriptionCatRepositoryImpl>()));
//Datasource
    Get.lazyPut(
        () => DescriptionCatDataSourceImpl(client: Get.find<ClientHttp>()));

    Get.put(
      DescriptionCatsController(
        Get.find<DescriptionCatUsecaseImpl>(),
      ),
      permanent: true,
    );
  }
}
