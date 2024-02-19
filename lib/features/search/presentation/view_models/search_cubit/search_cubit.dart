import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepoImpl) : super(SearchInitial());

  final SearchRepoImpl searchRepoImpl;

  Future<void> fetchSearchResult(String book) async {
    emit(SearchLoading());
    var result = await searchRepoImpl.fetchResultSearch(book);
    result.fold(
      (failure) => emit(SearchFailure(failure.error)),
      (books) => emit(SearchSuccess(books)),
    );
  }
}
