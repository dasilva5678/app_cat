
import 'package:search_address/domain/models/categories_model.dart';

abstract class GetCategoriesDataSource {
  Future<List<CategoriesModel>> call();
}
