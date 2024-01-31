
import 'package:dartz/dartz.dart';
import 'package:search_address/core/errors/failure/failures.dart';
import 'package:search_address/data/datasource/get_categories_datasources/get_categories_datasource.dart';
import 'package:search_address/domain/models/categories_model.dart';
import 'package:search_address/domain/repository/get_categories_repository/get_categories_repository.dart';

class GetCategoriesRepositoryImpl implements GetCategoriesRepository {
  final GetCategoriesDataSource _datasource;

  GetCategoriesRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, List<CategoriesModel>>> call() async {
    try {
      final result = await _datasource.call();
      return Right(result);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}
