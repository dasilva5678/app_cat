import 'package:dartz/dartz.dart';

import 'package:search_address/domain/models/categories_model.dart';

import '../../../core/errors/failure/failures.dart';

abstract class GetCategoriesUsecase {
  Future<Either<Failure, List<CategoriesModel>>> call();
}
