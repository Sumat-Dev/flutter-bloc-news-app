import 'package:flutter/material.dart';
import 'package:flutter_bloc_news_app/core/common/views/page_under_construction.dart';
import 'package:flutter_bloc_news_app/features/articles/presentation/pages/articles_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ArticlesScreen.routeName:
      return _pageBuilder(
        (_) => const ArticlesScreen(),
        settings: settings,
      );
    default:
      return _pageBuilder(
        (_) => const PageUnderConstruction(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext) page, {
  required RouteSettings settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
    pageBuilder: (context, _, __) => page(context),
  );
}
