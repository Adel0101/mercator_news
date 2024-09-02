import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mercator_news_app/pages/article/model.dart';
import 'package:mercator_news_app/utils/constants.dart';
import 'package:mercator_news_app/utils/helpers.dart';
import 'package:mercator_news_app/utils/responsive/size_config.dart';

class ArticleDetailsView extends StatelessWidget {
  const ArticleDetailsView({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Helpers.shareLink(
                    article.shareUrl ?? article.websiteUrl ?? 'N/A',
                    article.customUrlTitle);
              },
              icon: const Icon(Icons.share))
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 800),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Constants.padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        article.name,
                        style: Constants.pageTitleStyle.copyWith(
                            fontSize: 2.4 * SizeConfig.textMultiplier!),
                      ),
                      Text(
                        article.date,
                        style: Constants.pageSubTitleStyle.copyWith(
                            fontSize: 2.0 * SizeConfig.textMultiplier!),
                      ),
                    ],
                  ),
                ),
                if (article.author.isNotEmpty)
                  Text(
                    article.author,
                    style: Constants.pageSubTitleStyle
                        .copyWith(fontSize: 2.0 * SizeConfig.textMultiplier!),
                  ),
                SizedBox(height: Constants.padding),
                Hero(
                  tag: article.id,
                  child: CachedNetworkImage(
                    imageUrl: article.mainImage,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                    errorWidget: (context, _, __) =>
                        Image.asset('assets/images/image_placeholder.png'),
                  ),
                ),
                SizedBox(height: Constants.padding),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Constants.padding),
                  child: Text(
                    article.description
                        .replaceAll('n\\', '\n')
                        .replaceAll('r\\', '\n')
                        .replaceAll('\\', '')
                        .replaceAll('n', '')
                        .replaceAll('&bsp;', ' ')
                        .replaceAll('&laquo;', '<<')
                        .replaceAll('&raquo;', '>>'),
                    style: Constants.pageTitleStyle
                        .copyWith(fontSize: 1.8 * SizeConfig.textMultiplier!),
                  ),
                ),
                SizedBox(height: Constants.padding),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
