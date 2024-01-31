import 'package:app_cat/domain/models/breeds_model.dart';

abstract class BreedsDataSource {
  Future<List<BreedsModel>> call();
}
