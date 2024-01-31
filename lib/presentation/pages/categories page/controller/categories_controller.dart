import 'package:get/get.dart';
import 'package:app_cat/domain/models/categories_model.dart';
import 'package:app_cat/domain/usecase/get_categories_usecases/get_categories_usecase.dart';

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
