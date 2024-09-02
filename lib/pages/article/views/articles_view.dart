import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mercator_news_app/pages/article/index.dart';
import 'package:mercator_news_app/utils/constants.dart';

class ArticlesView extends ConsumerWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleFutureState = ref.watch(articleViewModelProvider);
    final articleViewModel = ref.watch(articleViewModelProvider.notifier);
    final double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Constants.padding),
            child: articleFutureState.when(
                data: (data) => Align(
                      alignment: Alignment.center,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 800),
                        child: RefreshIndicator(
                          onRefresh: () async =>
                              articleViewModel.fetchArticles(),
                          child: ListView(
                            children: [
                              const ArticlesPageAppBar(),
                              SizedBox(height: Constants.padding),
                              ...data.articles.map(
                                  (article) => ArticleCard(article: article)),
                            ],
                          ),
                        ),
                      ),
                    ),
                error: (error, _) => RefreshIndicator(
                      onRefresh: () async => articleViewModel.fetchArticles(),
                      child: SingleChildScrollView(
                        child: Container(
                          alignment: Alignment.center,
                          height: height,
                          child: Text(
                            error.toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                loading: () =>
                    const Center(child: CircularProgressIndicator())),
          ),
        ),
      ),
    );
  }
}
