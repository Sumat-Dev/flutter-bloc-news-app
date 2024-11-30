import 'package:flutter_bloc_news_app/core/usecases/usecases.dart';
import 'package:flutter_bloc_news_app/core/utils/typdefs.dart';
import 'package:flutter_bloc_news_app/features/news/domain/entities/articles.dart';
import 'package:flutter_bloc_news_app/features/news/domain/repositories/article_repository.dart';

class GetNewsArticles extends UsecaseWithoutParams<ArticlesEntity> {
  const GetNewsArticles(this._repo);

  final ArticleRepository _repo;

  @override
  ResultFuture<ArticlesEntity> call() => _repo.getNewsArticles();
}
