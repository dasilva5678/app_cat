import 'package:app_cat/domain/models/description_cat_model.dart';
import 'package:dartz/dartz.dart';
import 'package:app_cat/core/errors/failure/failures.dart';

abstract class DescriptionCatRepository {
  Future<Either<Failure, List<DescriptionCat>>> call(int page, int limit);
}
