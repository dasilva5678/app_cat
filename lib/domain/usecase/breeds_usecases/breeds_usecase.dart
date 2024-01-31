import 'package:dartz/dartz.dart';
import 'package:search_address/core/errors/failure/failures.dart';
import 'package:search_address/domain/models/breeds_model.dart';


abstract class BreedsUsecase {
  Future<Either<Failure, List<BreedsModel>>> call();
}
