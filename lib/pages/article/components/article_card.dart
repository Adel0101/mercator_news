import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mercator_news_app/pages/article/model.dart';
import 'package:mercator_news_app/utils/constants.dart';
import 'package:mercator_news_app/utils/helpers.dart';
import 'package:mercator_news_app/utils/responsive/size_config.dart';
import 'package:mercator_news_app/utils/router/paths.dart';
import 'package:mercator_news_app/utils/widgets/section_widget.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.pushNamed(context, Routes.articleDetails,
          arguments: article),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: Constants.padding / 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius:
                        BorderRadius.circular(5 * SizeConfig.hMultiplier!),
                    child: Hero(
                      tag: article.id,
                      child: CachedNetworkImage(
                        imageUrl: article.mainImage,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                        errorWidget: (context, _, __) =>
                            Image.asset('assets/images/image_placeholder.png'),
                      ),
                    )),
                SizedBox(width: Constants.padding / 2),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        article.date,
                        style: Constants.pageSubTitleStyle,
                      ),
                      Text(
                        article.name,
                        style: Constants.pageTitleStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SectionWidget(
                              color: Helpers.sectionColor(article.section)
                                  .withOpacity(0.3),
                              text: article.section),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
