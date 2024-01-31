import 'package:search_address/domain/models/breeds_model.dart';

abstract class BreedsDataSource {
  Future<List<BreedsModel>> call();
}
