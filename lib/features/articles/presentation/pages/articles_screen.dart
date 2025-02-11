import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_news_app/features/articles/presentation/cubit/remote_articles/remote_articles_cubit.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({super.key});

  static const routeName = '/';

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Top News')),
      body: BlocBuilder<RemoteArticlesCubit, RemoteArticlesState>(
        builder: (_, state) {
          switch (state.runtimeType) {
            case ArticlesLoading:
              return const Center(child: CupertinoActivityIndicator());
            case ArticlesFailed:
              return const Center(child: Icon(Icons.refresh));
            case ArticlesLoaded:
              return const Text('...is ok ');
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
