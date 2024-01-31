import 'package:get/get.dart';
import 'package:search_address/domain/models/categories_model.dart';
import 'package:search_address/domain/usecase/get_categories_usecases/get_categories_usecase.dart';

class CategoriesController extends GetxController {
  final GetCategoriesUsecase _getCategoriesUsecase;

  CategoriesController(this._getCategoriesUsecase);

  
  List<CategoriesModel> categories = [];


  Future<void> getAllCategories() async {
    categories.clear();

    final result = await _getCategoriesUsecase.call();
    result.fold(
      (erro) {
        print(erro);
      },
      (sucesso) {
        categories.addAll(sucesso);

        update();
      },
    );
  }
}
