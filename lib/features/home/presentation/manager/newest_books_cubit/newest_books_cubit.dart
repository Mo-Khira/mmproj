import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mmproj/features/home/domain/entities/book_entity.dart';
import 'package:mmproj/features/home/domain/use_cases/fetch_newest_books_use_case.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(
    this.fetchNewestBooksUseCase,
  ) : super(NewestBooksInitial());

  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await fetchNewestBooksUseCase.call();

    result.fold((failure) {
      emit(
        NewestBooksFailure(failure.message),
      );
    }, (books) {
      emit(
        NewestBooksSuccess(books),
      );
    });
  }
}
