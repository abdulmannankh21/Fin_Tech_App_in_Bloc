import 'package:flutter/cupertino.dart';

import '../constant/constant.dart';
import '../constant/constant_data.dart' as constance;

class InfiniteText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Locale? locale;
  final int? maxLines;
  final TextOverflow? overflow;
  final String? semanticsLabel;
  final bool? softWrap;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextHeightBehavior? textHeightBehavior;
  final double? textScaleFactor;
  final TextWidthBasis? textWidthBasis;

  const InfiniteText(
    this.text, {
    Key? key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(text),
      key: key,
      style: style,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }
}

// ignore: avoid_classes_with_only_static_members
class AppLocalizations {
  static String of(String text, {String ignoreLanguageCode = 'en'}) {
    String myLocale = locale;

    // ignore: unnecessary_null_comparison
    if (constance.allTextData != null &&
        constance.allTextData.allText!.isNotEmpty) {
      var newtext = '';
      int index = constance.allTextData.allText!
          .indexWhere((note) => note.textId == text);
      if (index != -1) {
        if (myLocale == 'fr') {
          newtext = constance.allTextData.allText![index].fr;
        } else if (myLocale == 'ar') {
          newtext = constance.allTextData.allText![index].ar;
        } else if (myLocale == 'en') {
          newtext = constance.allTextData.allText![index].en;
        } else if (myLocale == 'ja') {
          newtext = constance.allTextData.allText![index].ja;
        }
        if (newtext != '') {
          return newtext;
        } else {
          return text;
        }
      } else {
        return text;
      }
    } else {
      return text;
    }
  }
}
