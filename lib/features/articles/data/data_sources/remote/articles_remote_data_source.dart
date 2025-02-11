import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc_news_app/core/error/failures.dart';
import 'package:flutter_bloc_news_app/core/utils/typdefs.dart';
import 'package:flutter_bloc_news_app/features/articles/data/models/articles_model.dart';

abstract class ArticlesRemoteDataSource {
  const ArticlesRemoteDataSource();

  ResultFuture<ArticlesModel> getNewsArticles();
}

class ArticlesRemoteDataSrcImpl extends ArticlesRemoteDataSource {
  const ArticlesRemoteDataSrcImpl(this._dio);

  // ignore: constant_identifier_names
  static const String API_KEY = '4d444840fc794317833abf51d80152f6';

  final Dio _dio;
  @override
  ResultFuture<ArticlesModel> getNewsArticles() async {
    try {
      final response = await _dio.get<dynamic>(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$API_KEY',
      );
      if (response.statusCode == 200) {
        return Right(ArticlesModel.formJson(response.data as DataMap));
      } else {
        return Left(
          ServerFailure(
            message: 'Failed to fetch news articles',
            statusCode: response.statusCode,
          ),
        );
      }
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          message: 'Catch to fetch news articles',
          statusCode: e.response?.statusCode ?? 500,
        ),
      );
    }
  }
}
