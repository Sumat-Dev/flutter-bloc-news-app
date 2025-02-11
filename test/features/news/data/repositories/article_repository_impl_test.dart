// import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc_news_app/core/error/exceptions.dart';
// import 'package:flutter_bloc_news_app/core/error/failures.dart';
// import 'package:flutter_bloc_news_app/features/news/data/data_sources/remote/articles_remote_data_source.dart';
// import 'package:flutter_bloc_news_app/features/news/data/models/articles_model.dart';
// import 'package:flutter_bloc_news_app/features/news/data/repositories/articles_repository_impl.dart';
// import 'package:flutter_bloc_news_app/features/news/domain/repositories/articles_repository.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
//
// class MockArticlesRemoteDataSrc extends Mock
//     implements ArticlesRemoteDataSource {}
//
// void main() {
//   late ArticlesRemoteDataSource remoteDataSource;
//   late ArticlesRepositoryImpl repoImpl;
//
//   setUp(() {
//     remoteDataSource = MockArticlesRemoteDataSrc();
//     repoImpl = ArticlesRepositoryImpl(remoteDataSource);
//   });
//
//   test('should be a subclass of [ArticlesRepository]', () {
//     expect(repoImpl, isA<ArticlesRepository>());
//   });
//
//   group('getNewsArticles', () {
//     test(
//       'should return ArticlesModel when call to remote source is successful',
//       () async {
//         const articlesModel = NewsArticlesModel.empty();
//         when(() => remoteDataSource.getNewsArticles()).thenAnswer(
//           (_) => Future.value(const Right(articlesModel)),
//         );
//
//         final result = await repoImpl.getNewsArticles();
//
//         expect(
//           result,
//           equals(const Right<dynamic, NewsArticlesModel>(articlesModel)),
//         );
//         verify(() => remoteDataSource.getNewsArticles());
//         verifyNoMoreInteractions(remoteDataSource);
//       },
//     );
//
//     test(
//       'should return [getNewsArticles] when call to remote source '
//       'is unsuccessful',
//       () async {
//         when(() => remoteDataSource.getNewsArticles()).thenThrow(
//           const CacheException(message: 'Insufficient storage'),
//         );
//
//         final result = await repoImpl.getNewsArticles();
//
//         expect(
//           result,
//           Left<CacheFailure, dynamic>(
//             CacheFailure(
//               message: 'Insufficient storage',
//               statusCode: 500,
//             ),
//           ),
//         );
//         verify(() => remoteDataSource.getNewsArticles());
//         verifyNoMoreInteractions(remoteDataSource);
//       },
//     );
//   });
// }
