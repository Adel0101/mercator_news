// To parse this JSON data, do
//
//     final articles = articlesFromJson(jsonString);

import 'dart:convert';

Articles articlesFromJson(String str) => Articles.fromJson(json.decode(str));

String articlesToJson(Articles data) => json.encode(data.toJson());

class Articles {
  final bool hasNextPage;
  final List<Article> articles;

  Articles({
    required this.hasNextPage,
    required this.articles,
  });

  Articles copyWith({
    bool? hasNextPage,
    List<Article>? articles,
  }) =>
      Articles(
        hasNextPage: hasNextPage ?? this.hasNextPage,
        articles: articles ?? this.articles,
      );

  factory Articles.fromJson(Map<String, dynamic> json) => Articles(
        hasNextPage: json["hasNextPage"],
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "hasNextPage": hasNextPage,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
      };
}

class Article {
  final String id;
  final String customUrlTitle;
  final String name;
  final String date;
  final String time;
  final String dateCreated;
  final String description;
  final bool hasDescription;
  final String mainImage;
  final String mainImageSrc;
  final String detailsImage;
  final String detailsImageSrc;
  final String videoImage;
  final String videoImageSrc;
  final dynamic featured;
  final dynamic templateId;
  final String team1;
  final String score1;
  final String team2;
  final String score2;
  final String section;
  final String source;
  final String sourceImage;
  final String sourceImageSrc;
  final String author;
  final String authorImage;
  final String authorImageSrc;
  final String websiteUrl;
  final String? shareUrl;
  final bool important;
  final String hasVideo;
  final List<dynamic> keywords;
  final List<dynamic> photos;
  final List<dynamic> videos;

  Article({
    required this.id,
    required this.customUrlTitle,
    required this.name,
    required this.date,
    required this.time,
    required this.dateCreated,
    required this.description,
    required this.hasDescription,
    required this.mainImage,
    required this.mainImageSrc,
    required this.detailsImage,
    required this.detailsImageSrc,
    required this.videoImage,
    required this.videoImageSrc,
    required this.featured,
    required this.templateId,
    required this.team1,
    required this.score1,
    required this.team2,
    required this.score2,
    required this.section,
    required this.source,
    required this.sourceImage,
    required this.sourceImageSrc,
    required this.author,
    required this.authorImage,
    required this.authorImageSrc,
    required this.websiteUrl,
    required this.shareUrl,
    required this.important,
    required this.hasVideo,
    required this.keywords,
    required this.photos,
    required this.videos,
  });

  Article copyWith({
    String? id,
    String? customUrlTitle,
    String? name,
    String? date,
    String? time,
    String? dateCreated,
    String? description,
    bool? hasDescription,
    String? mainImage,
    String? mainImageSrc,
    String? detailsImage,
    String? detailsImageSrc,
    String? videoImage,
    String? videoImageSrc,
    dynamic featured,
    dynamic templateId,
    String? team1,
    String? score1,
    String? team2,
    String? score2,
    String? section,
    String? source,
    String? sourceImage,
    String? sourceImageSrc,
    String? author,
    String? authorImage,
    String? authorImageSrc,
    String? websiteUrl,
    String? shareUrl,
    bool? important,
    String? hasVideo,
    List<dynamic>? keywords,
    List<dynamic>? photos,
    List<dynamic>? videos,
  }) =>
      Article(
        id: id ?? this.id,
        customUrlTitle: customUrlTitle ?? this.customUrlTitle,
        name: name ?? this.name,
        date: date ?? this.date,
        time: time ?? this.time,
        dateCreated: dateCreated ?? this.dateCreated,
        description: description ?? this.description,
        hasDescription: hasDescription ?? this.hasDescription,
        mainImage: mainImage ?? this.mainImage,
        mainImageSrc: mainImageSrc ?? this.mainImageSrc,
        detailsImage: detailsImage ?? this.detailsImage,
        detailsImageSrc: detailsImageSrc ?? this.detailsImageSrc,
        videoImage: videoImage ?? this.videoImage,
        videoImageSrc: videoImageSrc ?? this.videoImageSrc,
        featured: featured ?? this.featured,
        templateId: templateId ?? this.templateId,
        team1: team1 ?? this.team1,
        score1: score1 ?? this.score1,
        team2: team2 ?? this.team2,
        score2: score2 ?? this.score2,
        section: section ?? this.section,
        source: source ?? this.source,
        sourceImage: sourceImage ?? this.sourceImage,
        sourceImageSrc: sourceImageSrc ?? this.sourceImageSrc,
        author: author ?? this.author,
        authorImage: authorImage ?? this.authorImage,
        authorImageSrc: authorImageSrc ?? this.authorImageSrc,
        websiteUrl: websiteUrl ?? this.websiteUrl,
        shareUrl: shareUrl ?? this.shareUrl,
        important: important ?? this.important,
        hasVideo: hasVideo ?? this.hasVideo,
        keywords: keywords ?? this.keywords,
        photos: photos ?? this.photos,
        videos: videos ?? this.videos,
      );

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        id: json["id"],
        customUrlTitle: json["customUrlTitle"],
        name: json["name"],
        date: json["date"],
        time: json["time"],
        dateCreated: json["dateCreated"],
        description: json["description"],
        hasDescription: json["hasDescription"],
        mainImage: json["mainImage"],
        mainImageSrc: json["mainImageSrc"],
        detailsImage: json["detailsImage"],
        detailsImageSrc: json["detailsImageSrc"],
        videoImage: json["videoImage"],
        videoImageSrc: json["videoImageSrc"],
        featured: json["featured"],
        templateId: json["templateId"],
        team1: json["team1"],
        score1: json["score1"],
        team2: json["team2"],
        score2: json["score2"],
        section: json["section"],
        source: json["source"],
        sourceImage: json["sourceImage"],
        sourceImageSrc: json["sourceImageSrc"],
        author: json["author"],
        authorImage: json["authorImage"],
        authorImageSrc: json["authorImageSrc"],
        websiteUrl: json["websiteUrl"],
        shareUrl: json["shareURL"],
        important: json["important"],
        hasVideo: json["hasVideo"],
        keywords: List<dynamic>.from(json["keywords"].map((x) => x)),
        photos: List<dynamic>.from(json["photos"].map((x) => x)),
        videos: List<dynamic>.from(json["videos"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customUrlTitle": customUrlTitle,
        "name": name,
        "date": date,
        "time": time,
        "dateCreated": dateCreated,
        "description": description,
        "hasDescription": hasDescription,
        "mainImage": mainImage,
        "mainImageSrc": mainImageSrc,
        "detailsImage": detailsImage,
        "detailsImageSrc": detailsImageSrc,
        "videoImage": videoImage,
        "videoImageSrc": videoImageSrc,
        "featured": featured,
        "templateId": templateId,
        "team1": team1,
        "score1": score1,
        "team2": team2,
        "score2": score2,
        "section": section,
        "source": source,
        "sourceImage": sourceImage,
        "sourceImageSrc": sourceImageSrc,
        "author": author,
        "authorImage": authorImage,
        "authorImageSrc": authorImageSrc,
        "websiteUrl": websiteUrl,
        "shareURL": shareUrl,
        "important": important,
        "hasVideo": hasVideo,
        "keywords": List<dynamic>.from(keywords.map((x) => x)),
        "photos": List<dynamic>.from(photos.map((x) => x)),
        "videos": List<dynamic>.from(videos.map((x) => x)),
      };
}
