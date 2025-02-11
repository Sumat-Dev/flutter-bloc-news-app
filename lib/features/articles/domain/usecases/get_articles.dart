import 'package:flutter_bloc_news_app/core/usecases/usecases.dart';
import 'package:flutter_bloc_news_app/core/utils/typdefs.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/entities/articles.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/repositories/articles_repository.dart';

class GetArticles extends UsecaseWithoutParams<ArticlesEntity> {
  const GetArticles(this._repo);

  final ArticlesRepository _repo;

  @override
  ResultFuture<ArticlesEntity> call() => _repo.getArticles();
}
