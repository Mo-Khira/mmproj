import 'package:dartz/dartz.dart';
import 'package:mmproj/core/errors/failure.dart';
import 'package:mmproj/core/use_cases/use_case.dart';
import 'package:mmproj/features/home/domain/entities/book_entity.dart';
import 'package:mmproj/features/home/domain/repos/home_repo.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    // TODO: implement call
    return await homeRepo.fetchNewestBooks();
  }
}
