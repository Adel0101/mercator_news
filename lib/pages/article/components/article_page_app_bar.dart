import 'package:flutter/material.dart';
import 'package:mercator_news_app/utils/constants.dart';

class ArticlesPageAppBar extends StatelessWidget {
  const ArticlesPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          Constants.articlesPageTitle,
          style: Constants.pageTitleStyle,
        ),
        const Text(Constants.articlesPageSubTitle),
      ],
    );
  }
}
