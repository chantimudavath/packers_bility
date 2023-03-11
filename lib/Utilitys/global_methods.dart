import 'package:flutter/material.dart';
import 'package:packers_bility/Utilitys/colors.dart';
import 'font_manager.dart';

class GlobalMethods {
  //static const String fontNameLora = "Lora";
  static const String fontNameInter = "Inter";
  final ThemeData base = ThemeData.light();

  ThemeData transactionTheme(BuildContext context) {
    return base.copyWith(
        // Define the default brightness and colors.
        backgroundColor: ColorCodes.WHITE,
        brightness: Brightness.dark,
        primaryColor: ColorCodes.primary, //color of the main banner
        secondaryHeaderColor: ColorCodes.primary, //color of circle indicating the selected date
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.accent //color of the text in the button "OK/CANCEL"
        ),
        
        primaryColorLight: ColorCodes.BLACK,
        radioTheme: Theme.of(context).radioTheme.copyWith(
              fillColor: MaterialStateProperty.all(ColorCodes.primary),
            ),
        checkboxTheme: Theme.of(context).checkboxTheme.copyWith(
              fillColor: MaterialStateProperty.all(ColorCodes.primary),
            ),
        popupMenuTheme: Theme.of(context).popupMenuTheme.copyWith(
              color: ColorCodes.primary,
            ),
        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        inputDecorationTheme: base.inputDecorationTheme.copyWith(
            hintStyle: FontManager().getTextStyle(context,
                fontSize: 14,
                color: ColorCodes.BLACK,
                lWeight: FontWeight.w500,
                fontName: GlobalMethods.fontNameInter),
            fillColor: ColorCodes.BLACK),
        textTheme: TextTheme(
          headline1: FontManager().getTextStyle(context,
              fontSize: 16,
              color: ColorCodes.BLACK,
              lWeight: FontWeight.bold,
              fontName: GlobalMethods.fontNameInter),
          headline2: FontManager().getTextStyle(context,
              fontSize: 14,
              color: ColorCodes.BLACK,
              lWeight: FontWeight.w500,
              fontName: GlobalMethods.fontNameInter),
          bodyText2: FontManager().getTextStyle(context,
              fontSize: 12,
              color: ColorCodes.BLACK,
              lWeight: FontWeight.normal,
              fontName: GlobalMethods.fontNameInter),
        ));
  }

  
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
  String removeAllWhitespace() {
    // Remove all white space.
    return replaceAll(RegExp(r"\s+"), "");
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}


