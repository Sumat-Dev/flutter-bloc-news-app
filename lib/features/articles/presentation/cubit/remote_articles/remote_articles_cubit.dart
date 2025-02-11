import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/entities/articles.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/usecases/get_articles.dart';

part 'remote_articles_state.dart';

class RemoteArticlesCubit extends Cubit<RemoteArticlesState> {
  RemoteArticlesCubit({required GetArticles getArticles})
      : _getArticles = getArticles,
        super(const ArticlesInitial());

  final GetArticles _getArticles;

  Future<void> getArticles() async {
    try {
      emit(const ArticlesLoading());

      final result = await _getArticles();

      result.fold(
        (failure) => emit(ArticlesFailed(failure.message)),
        (success) => emit(ArticlesLoaded(articles: success)),
      );
    } catch (_) {
      rethrow;
    }
  }


}
