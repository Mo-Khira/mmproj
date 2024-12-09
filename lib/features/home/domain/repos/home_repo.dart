import 'package:dartz/dartz.dart';
import 'package:mmproj/core/errors/failure.dart';
import 'package:mmproj/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  // dartz **Either**
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
