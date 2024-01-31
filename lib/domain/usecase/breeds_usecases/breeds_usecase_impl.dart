import 'package:dartz/dartz.dart';
import 'package:app_cat/core/errors/failure/failures.dart';
import 'package:app_cat/domain/models/breeds_model.dart';
import 'package:app_cat/domain/repository/breeds_repository/breed_repository.dart';
import 'package:app_cat/domain/usecase/breeds_usecases/breeds_usecase.dart';

class BreedsUsecaseImpl implements BreedsUsecase{
  final BreedsRepository _repository;

  BreedsUsecaseImpl(this._repository);
  @override
  Future<Either<Failure, List<BreedsModel>>> call() async{
    return await _repository.call();
  }
}