import 'package:coffee_shop/utilities/app_localizations.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '';

class AppTextDisplay extends StatelessWidget {
  final String translation;
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final int maxLines;

  AppTextDisplay({
    this.translation = '',
    this.text = '',
    @required this.textStyle,
    this.textAlign = TextAlign.start,
    this.maxLines = 1,
  })  : assert(translation != '' || text != ''),
        assert(textStyle != null);

  @override
  Widget build(BuildContext context) {
    return Text(
      translation != ''
          ? AppLocalizations.of(context).translate(translation)
          : text,
      textAlign: textAlign,
      style: textStyle,
      maxLines: maxLines,
      softWrap: true,
    );
  }
}
