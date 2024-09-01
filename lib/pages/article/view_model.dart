import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mercator_news_app/pages/article/model.dart';
import 'package:mercator_news_app/services/article_service.dart';

final articleViewModelProvider =
    StateNotifierProvider<ArticleViewModel, AsyncValue<Articles>>((ref) {
  return ArticleViewModel(ref.read(apiServiceProvider));
});

class ArticleViewModel extends StateNotifier<AsyncValue<Articles>> {
  final ApiService _apiService;

  ArticleViewModel(this._apiService) : super(const AsyncValue.loading()) {
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    try {
      final Articles articles = await _apiService.fetchArticles();
      state = AsyncValue.data(articles);
    } catch (e) {
      state = AsyncValue.error(e.toString(), StackTrace.empty);
    }
  }

  Future<void> printArticles() async {
    try {
      final Articles articles = await _apiService.fetchArticles();
      for (Article article in articles.articles) {
        print(article.toJson());
      }
    } catch (e) {
      state = AsyncValue.error(e.toString(), StackTrace.empty);
    }
  }
}
