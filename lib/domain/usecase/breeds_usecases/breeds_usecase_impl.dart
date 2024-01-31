import 'package:dartz/dartz.dart';
import 'package:search_address/core/errors/failure/failures.dart';
import 'package:search_address/domain/models/breeds_model.dart';
import 'package:search_address/domain/repository/breeds_repository/breed_repository.dart';
import 'package:search_address/domain/usecase/breeds_usecases/breeds_usecase.dart';

class BreedsUsecaseImpl implements BreedsUsecase{
  final BreedsRepository _repository;

  BreedsUsecaseImpl(this._repository);
  @override
  Future<Either<Failure, List<BreedsModel>>> call() async{
    return await _repository.call();
  }
}