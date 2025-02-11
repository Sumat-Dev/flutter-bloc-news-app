import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_news_app/core/error/failures.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/repositories/articles_repository.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/usecases/get_articles.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'article_repo.mock.dart';

void main() {
  late ArticlesRepository repo;
  late GetArticles usecase;

  setUp(() {
    repo = MockArticleRepository();
    usecase = GetArticles(repo);
  });

  test(
    'should call the [ArticleRepository.getNewsArticles] '
    'and return the right data',
    () async {
      when(() => repo.getArticles()).thenAnswer(
        (_) async => Left(
          ServerFailure(
            message: 'Unknown Error Occurred',
            statusCode: 500,
          ),
        ),
      );

      final result = await usecase();

      expect(
        result,
        equals(
          Left<Failure,dynamic>(
            ServerFailure(
              message: 'Unknown Error Occurred',
              statusCode: 500,
            ),
          ),
        ),
      );

      verify(()=>repo.getArticles()).called(1);
      verifyNoMoreInteractions(repo);


    },
  );
}
