import 'package:equatable/equatable.dart';

class ArticlesEntity extends Equatable {
  const ArticlesEntity({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  const ArticlesEntity.empty()
      : this(
          author: '',
          title: '',
          description: '',
          url: '',
          urlToImage: '',
          publishedAt: '',
          content: '',
        );

  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  @override
  List<Object?> get props => [
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
      ];
}
