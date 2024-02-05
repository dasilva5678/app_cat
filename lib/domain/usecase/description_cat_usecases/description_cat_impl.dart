import 'package:app_cat/domain/models/description_cat_model.dart';
import 'package:app_cat/domain/usecase/description_cat_usecases/description_cat_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:app_cat/core/errors/failure/failures.dart';
import 'package:app_cat/domain/repository/description_cat_repository/description_cat_repository.dart';


class DescriptionCatUsecaseImpl implements DescriptionCatUsecase {
  final DescriptionCatRepository _repository;

  DescriptionCatUsecaseImpl(this._repository);
  @override
  Future<Either<Failure, List<DescriptionCat>>> call(int page, int limit) async {
    return await _repository.call( page, limit);
  }
}
