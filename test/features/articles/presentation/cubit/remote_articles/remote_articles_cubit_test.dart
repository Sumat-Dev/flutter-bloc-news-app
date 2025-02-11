import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_news_app/core/error/failures.dart';
import 'package:flutter_bloc_news_app/features/articles/data/models/articles_model.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/usecases/get_articles.dart';
import 'package:flutter_bloc_news_app/features/articles/presentation/cubit/remote_articles/remote_articles_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetArticles extends Mock implements GetArticles {}

void main() {
  final tArticlesModel = ArticlesModel.empty();
  late GetArticles getArticles;
  late RemoteArticlesCubit remoteArticlesCubit;

  setUp(() {
    getArticles = MockGetArticles();
    remoteArticlesCubit = RemoteArticlesCubit(getArticles: getArticles);
  });

  test('initial state should be [ArticlesInitial]', () {
    expect(remoteArticlesCubit.state, const ArticlesInitial());
  });

  group('getArticles', () {
    blocTest<RemoteArticlesCubit, RemoteArticlesState>(
      'should emit [ArticlesLoading, ArticlesLoaded] '
      'when getArticles is successful',
      build: () {
        when(() => getArticles()).thenAnswer(
          (_) async => Right(tArticlesModel),
        );
        return remoteArticlesCubit;
      },
      act: (cubit) => cubit.getArticles(),
      expect: () => [
        const ArticlesLoading(),
        ArticlesLoaded(articles: tArticlesModel),
      ],
      verify: (_) {
        verify(() => getArticles()).called(1);
        verifyNoMoreInteractions(getArticles);
      },
    );

    blocTest<RemoteArticlesCubit, RemoteArticlesState>(
      'should emit [ArticlesLoading, ArticlesFailed] '
      'when getArticles failed',
      build: () {
        when(() => getArticles()).thenAnswer(
          (_) async => Left(
            ServerFailure(
              message: 'Error occurred',
              statusCode: 500,
            ),
          ),
        );
        return remoteArticlesCubit;
      },
      act: (cubit) => cubit.getArticles(),
      expect: () => [
        const ArticlesLoading(),
        const ArticlesFailed('Error occurred'),
      ],
      verify: (_) {
        verify(() => getArticles()).called(1);
        verifyNoMoreInteractions(getArticles);
      },
    );
  });
}
