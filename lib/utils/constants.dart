import 'package:flutter/material.dart';
import 'package:mercator_news_app/utils/responsive/responsive.dart';

class Constants {
  static const String articlesPageTitle = 'Discover';
  static const String articlesPageSubTitle = 'News from around the world';
  static const String collection_users = 'users';
  static const String collection_roles = 'roles';
  static const String db_userId = 'userId';
  static const String role_hand = 'hand';
  static const String role_chef = 'chef';
  static const String role_admin = 'admin';
  static const String role_assistant = 'assistant';
  static const String role_cashier = 'cashier';
  static const String status_cooking = 'cooking';
  static const String status_serving = 'serving';
  static const String status_done = 'done';
  static const String status_pending = 'pending';
  static const String status_all = 'all';

  static double padding = 16;
  static double lbpExchangeRate = 90000;

  static const Color primaryColor = Color(0xffFF4433);
  static const Color secondaryColor1 = Color(0xffFF7043);
  static const Color secondaryColor2 = Color(0xffFFBB33);
  static const Color firstAccentColor = Color(0xffFF3388);
  static const Color secondAccentColor = Color(0xff33FF99);
  static const Color backgroundColor = Color(0xffF5F5F5);
  static const Color textColor = Color(0xff333333);
  static const Color subTextColor = Color(0xff666666);
  static const Color borderColor = Color(0xffDDDDDD);
  static const Color highlightColor = Color(0xffFF6666);

  static TextStyle pageTitleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: textColor,
  );

  static TextStyle pageSubTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: subTextColor,
  );

  static TextStyle cardTitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static TextStyle cardSubTitleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: subTextColor,
  );

  static TextStyle cardHighlightStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: firstAccentColor,
  );

  static TextStyle btnTextStyle(BuildContext context) =>
      (Responsive.isMobile(context) || Responsive.isSmallMobile(context))
          ? Constants.btnTitleStyle
          : Constants.btnTabletTitleStyle;

  static List<BoxShadow> cardBoxShadow = [
    const BoxShadow(
        color: Constants.borderColor,
        blurRadius: 5,
        spreadRadius: 2,
        offset: Offset(0, 1)),
  ];

  static TextStyle btnTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: backgroundColor,
  );

  static TextStyle btnMiniTitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: backgroundColor,
  );

  static TextStyle btnTabletTitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: backgroundColor,
  );

  Decoration boxDecorationDefault({
    BorderRadiusGeometry? borderRadius,
    Color? color,
    Gradient? gradient,
    BoxBorder? border,
    BoxShape? shape,
    BlendMode? backgroundBlendMode,
    List<BoxShadow>? boxShadow,
    DecorationImage? image,
  }) {
    return BoxDecoration(
      borderRadius: (shape != null && shape == BoxShape.circle)
          ? null
          : (borderRadius ?? radius()),
      boxShadow: boxShadow ?? defaultBoxShadow(),
      color: color ?? Colors.white,
      gradient: gradient,
      border: border,
      shape: shape ?? BoxShape.rectangle,
      backgroundBlendMode: backgroundBlendMode,
      image: image,
    );
  }

  BorderRadius radius([double? radius]) {
    return BorderRadius.all(radiusCircular(radius ?? 15));
  }

  /// default box shadow
  List<BoxShadow> defaultBoxShadow({
    Color? shadowColor,
    double? blurRadius,
    double? spreadRadius,
    Offset offset = const Offset(0.0, 0.0),
  }) {
    return [
      BoxShadow(
        color: shadowColor ?? Constants.backgroundColor,
        blurRadius: blurRadius ?? 4,
        spreadRadius: spreadRadius ?? 1,
        offset: offset,
      )
    ];
  }

  Radius radiusCircular([double? radius]) {
    return Radius.circular(radius ?? 15);
  }
}
