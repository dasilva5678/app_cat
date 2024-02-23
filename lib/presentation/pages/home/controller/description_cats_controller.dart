import 'package:app_cat/domain/models/breeds_model.dart';
import 'package:app_cat/domain/models/description_cat_model.dart';
import 'package:app_cat/domain/usecase/description_cat_usecases/description_cat_usecase.dart';

import 'package:get/get.dart';

class DescriptionCatsController extends GetxController {
  final DescriptionCatUsecase _descriptionCatUsecase;

  DescriptionCatsController(this._descriptionCatUsecase);

  List<DescriptionCat> descriptionCatList = [];
  List<BreedsModel> breedsList = [];
  bool isLoading = false;

  Future<void> getDescriptionCat(int page, int limit) async {
    final result = await _descriptionCatUsecase.call(page, limit);
    result.fold(
      (erro) {
        print(erro);
      },
      (sucesso) {
        descriptionCatList.addAll(sucesso);

        for (var descriptionCat in descriptionCatList) {
          if (descriptionCat.breeds != null) {
            breedsList.addAll(descriptionCat.breeds!);
          }
        }

        update();
      },
    );
  }
}
