import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mercator_news_app/pages/article/model.dart';

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService();
});

class ApiService {
  final Dio _dio = Dio();

  final String apiUrl =
      "https://vodapi.mtv.com.lb/api/Service/GetArticlesByNewsSectionID?id=-1&authorId=-1&start=0&end=20&keywordId=-1&onlyWithSource=false&type=&platform=&isLatin=false";

  Future<Articles> fetchArticles() async {
    try {
      final response = await _dio.get(apiUrl);
      return Articles.fromJson(response.data);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw Exception('Connection timed out. Please try again later.');
      } else if (e.type == DioExceptionType.badResponse) {
        throw Exception(
            'Failed to load articles: ${e.response?.statusMessage}');
      } else if (e.type == DioExceptionType.connectionError) {
        throw Exception(
            'No internet connection. Please check your connection and try again.');
      } else {
        throw Exception('Failed to load articles: ${e.message}');
      }
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
