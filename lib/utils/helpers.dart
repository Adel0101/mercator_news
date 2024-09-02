import 'package:flutter/material.dart';
import 'package:mercator_news_app/utils/constants.dart';
import 'package:share_plus/share_plus.dart';

class Helpers {
  /// return the color for the specific section for each article, takes the section text/type
  static Color sectionColor(String text) {
    return text == 'خــارجــيــات'
        ? Constants.secondaryColor
        : Constants.secondaryColor1;
  }

  /// A function that invokes the share feature, takes a link to the article and a title to send it with the message
  static Future<void> shareLink(String url, String title) async {
    await Share.share('$title\n $url');
  }
}
