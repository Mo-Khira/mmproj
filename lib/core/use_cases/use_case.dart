import 'package:dartz/dartz.dart';
import 'package:mmproj/core/errors/failure.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call(Param param);
}

class NoParam {}
