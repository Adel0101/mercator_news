import 'package:flutter/material.dart';
import 'package:mercator_news_app/utils/responsive/size_config.dart';

class Constants {
  static const String articlesPageTitle = 'Discover';
  static const String articlesPageSubTitle = 'News from around the world';

  static double padding = 16;

  static const Color secondaryColor = Color(0xffF5B841);
  static const Color secondaryColor1 = Color(0xff2F64FF);
  static const Color backgroundColor = Color(0xffF5F5F5);
  static const Color textColor = Color(0xff333333);
  static const Color subTextColor = Color(0xff949EB4);
  static const Color borderColor = Color(0xffDDDDDD);
  static const Color highlightColor = Color(0xffFF6666);

  static TextStyle pageTitleStyle = TextStyle(
    fontSize: 2.0 * SizeConfig.textMultiplier!,
    fontWeight: FontWeight.w700,
    color: textColor,
  );

  static TextStyle pageSubTitleStyle = TextStyle(
    fontSize: 1.6 * SizeConfig.textMultiplier!,
    fontWeight: FontWeight.w500,
    color: subTextColor,
  );
}
