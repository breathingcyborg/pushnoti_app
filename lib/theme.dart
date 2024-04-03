import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildThemeData() {

  const borderRadius = BorderRadius.zero;

  // base theme with colors
  var themeData = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );

  // change font
  themeData = themeData.copyWith(
    textTheme: GoogleFonts.latoTextTheme(themeData.textTheme),
  );

  // change display font
  themeData = themeData.copyWith(
    textTheme: themeData.textTheme.copyWith(
      displayLarge: GoogleFonts.bentham(
        textStyle: themeData.textTheme.displayLarge,
      ),
      displayMedium: GoogleFonts.bentham(
        textStyle: themeData.textTheme.displayMedium,
      ),
      displaySmall: GoogleFonts.bentham(
        textStyle: themeData.textTheme.displaySmall,
      ),
      labelMedium: themeData.textTheme.labelMedium?.copyWith(
        color: themeData.textTheme.labelMedium?.color?.withOpacity(0.5),
      ),
      labelLarge: themeData.textTheme.labelLarge?.copyWith(
        color: themeData.textTheme.labelLarge?.color?.withOpacity(0.5),
      ),
      labelSmall: themeData.textTheme.labelSmall?.copyWith(
        color: themeData.textTheme.labelSmall?.color?.withOpacity(0.5),
      ),
    )
  );

  // button
  themeData = themeData.copyWith(
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          backgroundColor: Colors.white,
          // side: const BorderSide(width: 0),
          shape: const RoundedRectangleBorder(
            side: BorderSide(), 
            borderRadius: borderRadius
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: themeData.colorScheme.primary,
          ), 
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          shape: const RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        )
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          shape: const RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        )
      ),
  );

  // inputs
  themeData = themeData.copyWith(
    inputDecorationTheme: themeData.inputDecorationTheme.copyWith(
      border: const OutlineInputBorder(
        borderRadius: borderRadius,
      ),
    )
  );

  // app bar
  themeData = themeData.copyWith(
    appBarTheme: themeData.appBarTheme.copyWith(
      titleTextStyle: GoogleFonts.bentham(
        textStyle: const TextStyle(
          fontSize: 28,
        ),
      ),
    )
  );

  return themeData;
}
