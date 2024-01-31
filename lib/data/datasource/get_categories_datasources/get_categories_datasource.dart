
import 'package:app_cat/domain/models/categories_model.dart';

abstract class GetCategoriesDataSource {
  Future<List<CategoriesModel>> call();
}
