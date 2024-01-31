import 'package:dartz/dartz.dart';
import 'package:app_cat/core/errors/failure/failures.dart';
import 'package:app_cat/domain/models/breeds_model.dart';


abstract class BreedsUsecase {
  Future<Either<Failure, List<BreedsModel>>> call();
}
