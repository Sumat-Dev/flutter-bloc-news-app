import 'package:flutter_bloc_news_app/core/utils/typdefs.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/entities/articles.dart';

abstract class ArticlesRepository {
  const ArticlesRepository();

  ResultFuture<ArticlesEntity> getArticles();

}
