part of 'featred_books_cubit.dart';

abstract class FeatredBooksState extends Equatable {
  const FeatredBooksState();

  @override
  List<Object> get props => [];
}

class FeatredBooksInitial extends FeatredBooksState {}

class FeatredBooksLoading extends FeatredBooksState {}

class FeatredBooksFailure extends FeatredBooksState {
  final String errMessage;

  const FeatredBooksFailure(this.errMessage);
}

class FeatredBooksSuccess extends FeatredBooksState {
  final List<BookModel> books;

  const FeatredBooksSuccess(this.books);
}
