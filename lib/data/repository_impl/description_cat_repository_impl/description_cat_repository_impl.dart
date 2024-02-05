import 'package:app_cat/domain/models/description_cat_model.dart';
import 'package:dartz/dartz.dart';
import 'package:app_cat/core/errors/failure/failures.dart';
import 'package:app_cat/data/datasource/description_cat_datasources/description_cat_datasources.dart';
import 'package:app_cat/domain/repository/description_cat_repository/description_cat_repository.dart';

class DescriptionCatRepositoryImpl implements DescriptionCatRepository {
  final DescriptionCatDataSource _datasource;

  DescriptionCatRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, List<DescriptionCat>>> call(int page, int limit) async {
    try {
      final result = await _datasource.call(page, limit);
      return Right(result);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}
