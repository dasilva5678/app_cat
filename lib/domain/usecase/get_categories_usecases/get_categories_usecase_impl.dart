
import 'package:dartz/dartz.dart';
import 'package:search_address/domain/models/categories_model.dart';
import 'package:search_address/domain/repository/get_categories_repository/get_categories_repository.dart';
import 'package:search_address/domain/usecase/get_categories_usecases/get_categories_usecase.dart';

import '../../../core/errors/failure/failures.dart';

class GetCategoriesUsecaseImpl implements GetCategoriesUsecase{
  final GetCategoriesRepository _repository;

  GetCategoriesUsecaseImpl(this._repository);
  @override
  Future<Either<Failure, List<CategoriesModel>>> call() async{
    return await _repository.call();
  }
}