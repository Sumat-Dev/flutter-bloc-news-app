import 'package:flutter_bloc_news_app/core/utils/typdefs.dart';
import 'package:flutter_bloc_news_app/features/articles/domain/entities/articles.dart';

class ArticlesModel extends ArticlesEntity {
  const ArticlesModel({
    required super.status,
    required super.totalResults,
    required super.articles,
  });

  ArticlesModel.empty()
      : this(
          status: '',
          totalResults: -1,
          articles: [NewsArticleModel.empty()],
        );

  ArticlesModel.formJson(DataMap map)
      : super(
          status: map['status'] as String,
          totalResults: map['totalResults'] as int,
          articles: (map['articles'] as List)
              .map(
                (article) => NewsArticleModel.fromJson(article as DataMap),
              )
              .toList(),
        );

  ArticlesModel.fromEntity(ArticlesEntity entity)
      : super(
          status: entity.status,
          totalResults: entity.totalResults,
          articles: entity.articles,
        );
}

class NewsArticleModel extends NewsArticleEntity {
  const NewsArticleModel({
    required super.source,
    required super.author,
    required super.title,
    required super.description,
    required super.url,
    required super.urlToImage,
    required super.publishedAt,
    required super.content,
  });

  NewsArticleModel.empty()
      : this(
          source: const NewsSourceModel.empty(),
          author: null,
          title: '',
          description: null,
          url: '',
          urlToImage: null,
          publishedAt: DateTime.now(),
          content: null,
        );

  NewsArticleModel.fromJson(DataMap map)
      : super(
          source: NewsSourceModel.fromJson(map['source'] as DataMap),
          author: map['author'] as String?,
          title: map['title'] as String,
          description: map['description'] as String?,
          url: map['url'] as String,
          urlToImage: map['urlToImage'] as String?,
          publishedAt: DateTime.parse(map['publishedAt'] as String),
          content: map['content'] as String?,
        );

  NewsArticleModel.fromEntity(NewsArticleEntity entity)
      : super(
          source: entity.source,
          author: entity.author,
          title: entity.title,
          description: entity.description,
          url: entity.url,
          urlToImage: entity.urlToImage,
          publishedAt: entity.publishedAt,
          content: entity.content,
        );
}

class NewsSourceModel extends NewsSourceEntity {
  const NewsSourceModel({
    required super.id,
    required super.name,
  });

  const NewsSourceModel.empty() : super(id: null, name: '');

  NewsSourceModel.fromJson(DataMap map)
      : super(
          id: map['id'] as String?,
          name: map['name'] as String,
        );

  NewsSourceModel.fromEntity(NewsSourceEntity entity)
      : super(
          id: entity.id,
          name: entity.name,
        );
}
