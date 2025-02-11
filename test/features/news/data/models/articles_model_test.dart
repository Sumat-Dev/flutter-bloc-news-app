// import 'dart:convert';
//
// import 'package:flutter_bloc_news_app/core/utils/typdefs.dart';
// import 'package:flutter_bloc_news_app/features/news/data/models/articles_model.dart';
// import 'package:flutter_bloc_news_app/features/news/domain/entities/articles.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// import '../../../../fixtures/fixture_reader.dart';
//
// void main() {
//   const tArticlesModel = NewsArticlesModel.empty();
//
//   test(
//     'should be a subclass of ArticleEntity',
//     () => expect(tArticlesModel, isA<NewsArticlesEntity>()),
//   );
//
//   group('fromJson', () {
//     final tMap = jsonDecode(fixture('articles.json')) as DataMap;
//     test(
//       'should return a valid ArticleModel from Json',
//       () {
//         final result = NewsArticlesModel.formJson(tMap);
//
//         expect(result, equals(tArticlesModel));
//       },
//     );
//
//     test(
//       'should throw an Error When the map is invalid',
//       () {
//         final map = DataMap.from(tMap)..remove('author');
//
//         const call = NewsArticlesModel.formJson;
//
//         expect(() => call(map), throwsA(isA<Error>()));
//       },
//     );
//   });
//
//   group('fromEntity', () {
//     const tEntity = NewsArticlesEntity.empty();
//     test(
//       'should return a valid ArticleModel from ArticleEntity',
//       () {
//         final result = NewsArticlesModel.fromEntity(tEntity);
//
//         expect(result, equals(tArticlesModel));
//       },
//     );
//   });
// }
