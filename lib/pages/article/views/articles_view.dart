import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mercator_news_app/pages/article/index.dart';
import 'package:mercator_news_app/services/article_service.dart';
import 'package:mercator_news_app/utils/constants.dart';
import 'package:mercator_news_app/utils/responsive/size_config.dart';
import 'package:mercator_news_app/utils/router/paths.dart';

class ArticlesView extends ConsumerWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleViewModel = ref.watch(articleViewModelProvider);
    final ArticleViewModel articleViewModelCon =
        ArticleViewModel(ref.read(apiServiceProvider));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Constants.padding),
            child: articleViewModel.when(
                data: (data) => ListView(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(Constants.articlesPageTitle),
                            Text(Constants.articlesPageSubTitle),
                          ],
                        ),
                        ...data.articles.map((article) => GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap: () => Navigator.pushNamed(
                                  context, Routes.articleDetails,
                                  arguments: article),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: Constants.padding / 2),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                5 * SizeConfig.hMultiplier!),
                                            child: CachedNetworkImage(
                                              imageUrl: article.mainImage,
                                              width: 120,
                                              height: 120,
                                              fit: BoxFit.cover,
                                            )),
                                        SizedBox(width: Constants.padding / 2),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(article.name),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.yellowAccent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                ],
                              ),
                            )),
                      ],
                    ),
                error: (error, _) => Text(error.toString()),
                loading: () =>
                    const Center(child: CircularProgressIndicator())),
          ),
        ),
      ),
    );
  }
}
