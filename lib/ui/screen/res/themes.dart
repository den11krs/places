import 'package:flutter/material.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/ui/screen/res/app_styles.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: AppLightColors.appBackgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppLightColors.appBackgroundColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.green,
      backgroundColor: Colors.greenAccent,
      textStyle: const TextStyle(color: Colors.black),
    ),
  ),
  primaryTextTheme: TextTheme(
    titleLarge: matHeadline6,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppLightColors.appPrimaryColor,
    brightness: Brightness.light,
  ).copyWith(
    background: AppLightColors.appBackgroundColor,
  ),
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: AppDarkColors.appBackgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppDarkColors.appBackgroundColor,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppDarkColors.appPrimaryColor,
    brightness: Brightness.dark,
  ).copyWith(
    background: AppDarkColors.appBackgroundColor,
  ),
);
//
//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       foregroundColor: Colors.green[900],
//       backgroundColor: Colors.green[800],
//       textStyle: const TextStyle(color: Colors.white),
//     ),
//   ),
//   appBarTheme: AppBarTheme(
//     backgroundColor: Colors.green[800],
//   ),
//   primaryTextTheme: TextTheme(
//     titleLarge: matHeadline6,
//   ),
//   colorScheme: ColorScheme.fromSeed(
//     seedColor: dmPrimaryColor,
//     brightness: Brightness.dark,
//   ).copyWith(background: dmPrimaryColor),
// );

class AppTheme {
  // 1
  static TextTheme lightTextTheme = const TextTheme(
    //  bodyText1:
    bodyLarge: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),

    // headline1
    displayLarge: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    // headline2
    displayMedium: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    // headline3
    displaySmall: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    // headline6
    titleLarge: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  );

  // 2
  static TextTheme darkTextTheme = const TextTheme(
    // bodyText1
    bodyLarge: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    // headline1
    displayLarge: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    // headline2
    displayMedium: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    // headline3
    displaySmall: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    // headline6
    titleLarge: TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
  );

  // 3
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  // 4
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
