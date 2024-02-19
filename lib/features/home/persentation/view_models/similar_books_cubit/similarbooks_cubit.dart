import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similarbooks_state.dart';

class SimilarbooksCubit extends Cubit<SimilarbooksState> {
  SimilarbooksCubit(this.homeRepo) : super(SimilarbooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarbooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) => emit(SimilarbooksFailure(failure.error)),
      (books) => emit(SimilarbooksSuccess(books)),
    );
  }
}
