import 'package:flutter/material.dart';
import 'package:get/get_utils/src/platform/platform.dart';

class ThemeConfig {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    /// default w500 is not supported for chinese characters in some devices
    textTheme: const TextTheme(titleMedium: TextStyle(fontWeight: FontWeight.w400)),
    colorScheme: ColorScheme.light(
      primary: Color(0xFF6750A4),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFEADDFF),
      onPrimaryContainer: Color(0xFF21005D),
      secondary: Color(0xFF625B71),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Colors.grey.shade200,
      onSecondaryContainer: Color(0xFF1D192B),
      tertiary: Color(0xFF7D5260),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFFFD8E4),
      onTertiaryContainer: Color(0xFF31111D),
      error: Color(0xFFB3261E),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFF9DEDC),
      onErrorContainer: Color(0xFF410E0B),
      background: Color(0xFFFFFBFE),
      onBackground: Color(0xFF1C1B1F),
      surface: Color(0xFFFFFBFE),
      onSurface: Color(0xFF1C1B1F),
      outline: Color(0xFF79747E),
      surfaceVariant: Color(0xFFE7E0EC),
      onSurfaceVariant: Color(0xFF49454F),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.pink.shade300,
      labelStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      unselectedLabelColor: Colors.grey.shade600,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.pink.shade300, width: 3))),
    ),
    // primaryColor: const Color.fromARGB(255, 0, 122, 255),
    // primaryColorLight: Colors.pink.shade300,
    // backgroundColor: Colors.grey.shade100,
    // appBarTheme: AppBarTheme(
    //   foregroundColor: Colors.grey.shade900,
    //   backgroundColor: Colors.white,
    //   systemOverlayStyle: const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.dark,
    //   ),
    //   titleTextStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    //   iconTheme: IconThemeData(color: Colors.grey.shade800),
    //   actionsIconTheme: IconThemeData(color: Colors.grey.shade900),
    //   elevation: 0,
    // ),

    // cupertinoOverrideTheme: const CupertinoThemeData(scaffoldBackgroundColor: Colors.white),
    // dialogTheme: const DialogTheme(
    //   titleTextStyle: TextStyle(
    //     fontSize: 16,
    //     color: Colors.black,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(elevation: MaterialStateProperty.all(0))),
    // cardColor: Colors.white,
    // hoverColor: Colors.transparent,
    fontFamily: GetPlatform.isWindows ? '新宋体' : null,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    /// default w500 is not supported for chinese characters in some devices
    textTheme: const TextTheme(titleMedium: TextStyle(fontWeight: FontWeight.w400)),
    colorScheme: ColorScheme.dark(
      primary: Color(0xFFD0BCFF),
      onPrimary: Color(0xFF381E72),
      primaryContainer: Color(0xFF4F378B),
      onPrimaryContainer: Color(0xFFEADDFF),
      secondary: Color(0xFFCCC2DC),
      onSecondary: Color(0xFF332D41),
      secondaryContainer: Colors.grey.shade800,
      onSecondaryContainer: Color(0xFF1D192B),
      tertiary: Color(0xFFEFB8C8),
      onTertiary: Color(0xFF492532),
      tertiaryContainer: Color(0xFF633B48),
      onTertiaryContainer: Color(0xFFFFD8E4),
      error: Color(0xFFF2B8B5),
      onError: Color(0xFF601410),
      errorContainer: Color(0xFF8C1D18),
      onErrorContainer: Color(0xFFF2B8B5),
      background: Color(0xFF1C1B1F),
      onBackground: Color(0xFFE6E1E5),
      surface: Color(0xFF1C1B1F),
      onSurface: Color(0xFFE6E1E5),
      outline: Color(0xFF938F99),
      surfaceVariant: Color(0xFF49454F),
      onSurfaceVariant: Color(0xFFCAC4D0),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.pink.shade300,
      labelStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      unselectedLabelColor: Colors.grey.shade600,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.pink.shade300, width: 3))),
    ),
    // primaryColor: const Color.fromARGB(255, 0, 122, 255),
    // primaryColorLight: Colors.pink.shade300,
    // backgroundColor: Colors.grey.shade900,
    // appBarTheme: AppBarTheme(
    //   foregroundColor: Colors.grey.shade100,
    //   backgroundColor: Colors.grey.shade900,
    //   systemOverlayStyle: const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.dark,
    //     statusBarIconBrightness: Brightness.light,
    //   ),
    //   titleTextStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    //   actionsIconTheme: const IconThemeData(color: Colors.white),
    // ),

    // cupertinoOverrideTheme: CupertinoThemeData(scaffoldBackgroundColor: Colors.grey.shade900),
    // dialogTheme: const DialogTheme(
    //   titleTextStyle: TextStyle(
    //     fontSize: 16,
    //     color: Colors.white,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(elevation: MaterialStateProperty.all(0))),
    // cardColor: Colors.grey.shade900,
    // hoverColor: Colors.transparent,
    fontFamily: GetPlatform.isWindows ? '新宋体' : null,
  );
}
