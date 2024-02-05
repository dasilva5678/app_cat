
import 'package:app_cat/domain/models/description_cat_model.dart';

abstract class DescriptionCatDataSource {
  Future<List<DescriptionCat>> call(int page, int limit);
}
