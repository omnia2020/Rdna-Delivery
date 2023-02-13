import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HtmlContent extends StatelessWidget {
  const HtmlContent({
    super.key,
    required this.content,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
  });
  final String? content;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Html(
      data: content ?? '',
      style: {
        'body': Style(
          fontSize: FontSize(fontSize),
          color: color,
          fontWeight: fontWeight,
        )
      },
    );
  }
}
