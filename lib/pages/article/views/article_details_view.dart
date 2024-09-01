import 'package:flutter/material.dart';
import 'package:mercator_news_app/pages/article/model.dart';

class ArticleDetailsView extends StatelessWidget {
  const ArticleDetailsView({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('${article.name}'),
      ),
    );
  }
}
