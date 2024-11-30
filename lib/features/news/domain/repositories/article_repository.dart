import 'package:flutter_bloc_news_app/core/utils/typdefs.dart';
import 'package:flutter_bloc_news_app/features/news/domain/entities/articles.dart';

abstract class ArticleRepository {
  const ArticleRepository();

  ResultFuture<ArticlesEntity> getNewsArticles();
}
