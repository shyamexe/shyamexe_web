
import 'package:flutter/material.dart';

class ApeTextTheme {
 static TextTheme theme(){

  return TextTheme(

    displayLarge:ThemeData.dark().textTheme.displayLarge?.copyWith(color: const Color(0xfff8edff)),
   displayMedium:ThemeData.dark().textTheme.displayMedium?.copyWith(color: const Color(0xfff8edff)),
   displaySmall:ThemeData.dark().textTheme.displaySmall?.copyWith(color: const Color(0xfff8edff)),
   headlineLarge:ThemeData.dark().textTheme.headlineLarge?.copyWith(color: const Color(0xfff8edff)),
   headlineMedium:ThemeData.dark().textTheme.headlineMedium?.copyWith(color: const Color(0xfff8edff)),
   headlineSmall:ThemeData.dark().textTheme.headlineSmall?.copyWith(color: const Color(0xfff8edff)),
   titleLarge:ThemeData.dark().textTheme.titleLarge?.copyWith(color: const Color(0xfff8edff)),
   titleMedium:ThemeData.dark().textTheme.titleMedium?.copyWith(color: const Color(0xfff8edff)),
   titleSmall:ThemeData.dark().textTheme.titleSmall?.copyWith(color: const Color(0xfff8edff)),
   bodyLarge:ThemeData.dark().textTheme.bodyLarge?.copyWith(color: const Color(0xfff8edff)),
   bodyMedium:ThemeData.dark().textTheme.bodyMedium?.copyWith(color: const Color(0xfff8edff)),
   bodySmall:ThemeData.dark().textTheme.bodySmall?.copyWith(color: const Color(0xfff8edff)),
   labelLarge:ThemeData.dark().textTheme.labelLarge?.copyWith(color: const Color(0xfff8edff)),
   labelMedium:ThemeData.dark().textTheme.labelMedium?.copyWith(color: const Color(0xfff8edff)),
   labelSmall:ThemeData.dark().textTheme.labelSmall?.copyWith(color: const Color(0xfff8edff)),
  );
  }
}