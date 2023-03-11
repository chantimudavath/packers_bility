import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:packers_bility/Utilitys/colors.dart';
import 'global_methods.dart';

// {
// FontWeight.w100: 'Thin',
// FontWeight.w200: 'ExtraLight',
// FontWeight.w300: 'Light',
// FontWeight.w400: 'Regular',
// FontWeight.w500: 'Medium',
// FontWeight.w600: 'SemiBold',
// FontWeight.w700: 'Bold',
// FontWeight.w800: 'ExtraBold',
// FontWeight.w900: 'Black',
// }

class FontManager {
  TextStyle getTextStyle(BuildContext context,
      {Color color = ColorCodes.BLACK,
      FontWeight lWeight = FontWeight.w400,
      lineHeight = 1.0,
      String fontName = GlobalMethods.fontNameInter,
      FontStyle lFontStyle = FontStyle.normal,
       softWrap=false,
      double fontSize = 12.0,
      decoration = TextDecoration.none,
      letterSpacing = 0.0,  TextOverflow overflow = TextOverflow.visible}) {
    return GoogleFonts.getFont(fontName,
        textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: lWeight,
            height: lineHeight,
            fontStyle: lFontStyle,
            color: color,
            letterSpacing: letterSpacing,
            decoration: decoration));
  }
}
