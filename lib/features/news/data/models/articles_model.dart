import 'package:flutter_bloc_news_app/core/utils/typdefs.dart';
import 'package:flutter_bloc_news_app/features/news/domain/entities/articles.dart';

class ArticlesModel extends ArticlesEntity {
  const ArticlesModel({
    required super.author,
    required super.title,
    required super.description,
    required super.url,
    required super.urlToImage,
    required super.publishedAt,
    required super.content,
  });

  const ArticlesModel.empty()
      : this(
          author: '',
          title: '',
          description: '',
          url: '',
          urlToImage: '',
          publishedAt: '',
          content: '',
        );

  ArticlesModel.formJson(DataMap map)
      : super(
          author: map['author'] as String,
          title: map['title'] as String,
          description: map['description'] as String,
          url: map['url'] as String,
          urlToImage: map['urlToImage'] as String,
          publishedAt: map['publishedAt'] as String,
          content: map['content'] as String,
        );

  ArticlesModel.fromEntity(ArticlesEntity entity)
      : super(
          author: entity.author,
          title: entity.title,
          description: entity.description,
          url: entity.urlToImage,
          urlToImage: entity.urlToImage,
          publishedAt: entity.publishedAt,
          content: entity.content,
        );
}
