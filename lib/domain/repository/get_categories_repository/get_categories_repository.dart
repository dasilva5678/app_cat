
import 'package:dartz/dartz.dart';
import 'package:search_address/core/errors/failure/failures.dart';
import 'package:search_address/domain/models/categories_model.dart';

abstract class GetCategoriesRepository {
  Future<Either<Failure, List<CategoriesModel>>> call();
}
