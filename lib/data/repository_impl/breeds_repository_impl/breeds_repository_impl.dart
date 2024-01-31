import 'package:dartz/dartz.dart';
import 'package:app_cat/core/errors/failure/failures.dart';
import 'package:app_cat/data/datasource/breeds_datasources/breeds_datasources.dart';
import 'package:app_cat/domain/models/breeds_model.dart';
import 'package:app_cat/domain/repository/breeds_repository/breed_repository.dart';

class BreedsRepositoryImpl implements BreedsRepository {
  final BreedsDataSource _datasource;

  BreedsRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, List<BreedsModel>>> call() async {
    try {
      final result = await _datasource.call();
      return Right(result);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}