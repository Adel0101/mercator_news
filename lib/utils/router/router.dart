import 'package:flutter/material.dart';
import 'package:mercator_news_app/pages/article/index.dart';
import 'package:mercator_news_app/pages/article/model.dart';
import 'package:mercator_news_app/pages/splash/view.dart';
import 'package:mercator_news_app/utils/router/paths.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.initial:
      return MaterialPageRoute(
          settings: settings, builder: (_) => const SplashView());
    case Routes.articles:
      return MaterialPageRoute(
          settings: settings, builder: (_) => const ArticlesView());
    case Routes.articleDetails:
      final Article article = settings.arguments as Article;
      return MaterialPageRoute(
          settings: settings,
          builder: (_) => ArticleDetailsView(
                article: article,
              ));
    default:
      return MaterialPageRoute(
          settings: settings,
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}
