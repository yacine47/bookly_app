import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchResultSearch(
      String book) async {
    try {
      var items = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:$book');
      List<BookModel> books = [];
      for (var item in items['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          debugPrint(e.toString());
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      }
      return left(ServiceFailure('No Result'));
    }
  }
}
