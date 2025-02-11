import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_news_app/core/error/exceptions.dart';
import 'package:flutter_bloc_news_app/core/error/failures.dart';
import 'package:flutter_bloc_news_app/core/utils/typdefs.dart';
import 'package:flutter_bloc_news_app/features/articles/data/data_sources/remote/articles_remote_data_source.dart';
import 'package:flutter_bloc_news_app/features/articles/data/models/articles_model.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/repositories/articles_repository.dart';


class ArticlesRepositoryImpl implements ArticlesRepository {
  ArticlesRepositoryImpl(this._remoteDataSource);

  final ArticlesRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<ArticlesModel> getArticles() async {
    try {
      return _remoteDataSource.getNewsArticles();
    } on CacheException catch (e) {
      return Left(
        CacheFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    }
  }
}
