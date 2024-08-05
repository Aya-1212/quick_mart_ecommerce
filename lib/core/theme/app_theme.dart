import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
  scaffoldBackgroundColor: GeneralAppColors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: GeneralAppColors.white,
    foregroundColor: GeneralAppColors.black,
  ),
  dividerTheme: const DividerThemeData(
    color: LightThemeColors.grey_50,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: getCaption(color: LightThemeColors.grey_100, isSemiBold: false),
    suffixIconColor: LightThemeColors.grey_100,
    contentPadding:
        const EdgeInsets.only(top: 16, left: 16, bottom: 16, right: 12),
    fillColor: GeneralAppColors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: LightThemeColors.grey_50,
          width: 3,
        )),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: GeneralAppColors.cyan,
        width: 3,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 3,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 3,
      ),
    ),
  ),
  colorScheme: const ColorScheme.light(
    onSurface: GeneralAppColors.black,
    primary: LightThemeColors.grey_150,
    secondary: LightThemeColors.grey_50,
    tertiary: LightThemeColors.grey_100,
    primaryContainer: LightThemeColors.cyan_50,
    secondaryContainer: GeneralAppColors.black,
  ),
);
///////////////////////////////////////////////////////////
ThemeData darkTheme = ThemeData(
  fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
  scaffoldBackgroundColor: GeneralAppColors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: GeneralAppColors.black,
    foregroundColor: GeneralAppColors.white,
  ),
  dividerTheme: const DividerThemeData(
    color: DarkThemeColors.grey_50,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: getCaption(color: DarkThemeColors.grey_100, isSemiBold: false),
    suffixIconColor: GeneralAppColors.white,
    contentPadding:
        const EdgeInsets.only(top: 16, left: 16, bottom: 16, right: 12),
    fillColor: GeneralAppColors.black,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          //
          color: DarkThemeColors.grey_50,
          width: 3,
        )),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: GeneralAppColors.cyan,
        width: 3,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 3,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 3,
      ),
    ),
  ),
  colorScheme: const ColorScheme.light(
    //header
    onSurface: GeneralAppColors.white,
    //text
    primary: DarkThemeColors.grey_150,
    secondary: DarkThemeColors.grey_50,
    tertiary: DarkThemeColors.grey_100,
    primaryContainer: DarkThemeColors.cyan_50,
    secondaryContainer: GeneralAppColors.cyan,
  ),
);
