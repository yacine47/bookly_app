part of 'similarbooks_cubit.dart';

abstract class SimilarbooksState extends Equatable {
  const SimilarbooksState();

  @override
  List<Object> get props => [];
}

class SimilarbooksInitial extends SimilarbooksState {}

class SimilarbooksLoading extends SimilarbooksState {}

class SimilarbooksSuccess extends SimilarbooksState {
  final List<BookModel> books;

  const SimilarbooksSuccess(this.books);
}

class SimilarbooksFailure extends SimilarbooksState {
  final String errMessage;

  const SimilarbooksFailure(this.errMessage);
}
