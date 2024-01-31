
import 'package:dartz/dartz.dart';
import 'package:app_cat/core/errors/failure/failures.dart';
import 'package:app_cat/domain/models/categories_model.dart';

abstract class GetCategoriesRepository {
  Future<Either<Failure, List<CategoriesModel>>> call();
}
