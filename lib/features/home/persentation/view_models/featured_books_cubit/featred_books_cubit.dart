import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featred_books_state.dart';

class FeatredBooksCubit extends Cubit<FeatredBooksState> {
  FeatredBooksCubit(this.homeRepo) : super(FeatredBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatredBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeatredBooksFailure(failure.error)),
      (books) => emit(FeatredBooksSuccess(books)),
    );
  }
}
