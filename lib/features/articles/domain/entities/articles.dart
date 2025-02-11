import 'package:equatable/equatable.dart';

class ArticlesEntity extends Equatable {
  const ArticlesEntity({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<NewsArticleEntity> articles;

  @override
  List<Object?> get props => [status, totalResults, articles];
}

class NewsArticleEntity extends Equatable {
  const NewsArticleEntity({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final NewsSourceEntity source;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;

  @override
  List<Object?> get props => [
        source,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
      ];
}

class NewsSourceEntity extends Equatable {
  const NewsSourceEntity({
    required this.id,
    required this.name,
  });

  final String? id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
