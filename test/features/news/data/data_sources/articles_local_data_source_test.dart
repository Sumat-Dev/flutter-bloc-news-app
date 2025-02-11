// import 'package:flutter_bloc_news_app/features/news/data/data_sources/articles_remote_data_source.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class MockSharedPreferences extends Mock implements SharedPreferences {}
//
// void main() {
//   late SharedPreferences prefs;
//   late ArticlesLocalDataSource localDataSource;
//
//   setUp(() {
//     prefs = MockSharedPreferences();
//     localDataSource = ArticlesLocalDataSrcImpl(prefs);
//   });
//
//   group('cacheGetNewsArticles', () {
//     test('should call [SharedPreferences] to  cache the data ', () async {
//       when(() => prefs.setBool(any(), any())).thenThrow((_) async => true);
//
//       await localDataSource.getNewsArticles();
//     });
//
//     verify(() => prefs.setBool(kFirstTimerKey, true));
//     verifyNoMoreInteractions(prefs);
//   });
// }
