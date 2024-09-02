import 'package:flutter/material.dart';
import 'package:mercator_news_app/utils/constants.dart';
import 'package:mercator_news_app/utils/helpers.dart';

/// A custom widget for the section box
class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constants.padding / 4),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
        style: TextStyle(
            color: Helpers.sectionColor(text), fontWeight: FontWeight.bold),
      ),
    );
  }
}
