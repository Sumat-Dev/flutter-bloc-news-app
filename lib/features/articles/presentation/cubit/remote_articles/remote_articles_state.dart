part of 'remote_articles_cubit.dart';

abstract class RemoteArticlesState extends Equatable {
  const RemoteArticlesState();

  @override
  List<Object?> get props => [];
}

class ArticlesInitial extends RemoteArticlesState {
  const ArticlesInitial();
}

class ArticlesLoading extends RemoteArticlesState {
  const ArticlesLoading();
}

class ArticlesLoaded extends RemoteArticlesState {
  const ArticlesLoaded({required this.articles});

  final ArticlesEntity articles;

  @override
  List<ArticlesEntity> get props => [articles];
}

class ArticlesFailed extends RemoteArticlesState {
  const ArticlesFailed(this.message);

  final String message;

  @override
  List<String> get props => [message];
}
