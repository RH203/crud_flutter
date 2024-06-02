import 'package:crud_flutter/src/theme/model_theme.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  final TextTheme textTheme;

  const CustomTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xFF555A92),
      surfaceTint: Color(0xFF555A92),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xffe0e0ff),
      onPrimaryContainer: Color(0xFF10144B),
      secondary: Color(0xFF5C5D72),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFE1E0F9),
      onSecondaryContainer: Color(0xFF191A2C),
      tertiary: Color(0xFF78536B),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFFFD8EE),
      onTertiaryContainer: Color(0xFF2E1126),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFBF8FF),
      onBackground: Color(0xFF1B1B21),
      surface: Color.fromRGBO(251, 248, 255, 1),
      onSurface: Color(0xff1b1b21),
      surfaceVariant: Color(0xffe3e1ec),
      onSurfaceVariant: Color(0xff46464f),
      outline: Color(0xff777680),
      outlineVariant: Color(0xffc7c5d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inverseOnSurface: Color(0xfff2eff7),
      inversePrimary: Color(0xffbec2ff),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff10144b),
      primaryFixedDim: Color(0xffbec2ff),
      onPrimaryFixedVariant: Color(0xff3d4279),
      secondaryFixed: Color(0xffe1e0f9),
      onSecondaryFixed: Color(0xff191a2c),
      secondaryFixedDim: Color(0xffc5c4dd),
      onSecondaryFixedVariant: Color(0xff444559),
      tertiaryFixed: Color(0xffffd8ee),
      onTertiaryFixed: Color(0xff2e1126),
      tertiaryFixedDim: Color(0xffe7b9d5),
      onTertiaryFixedVariant: Color(0xff5e3c53),
      surfaceDim: Color(0xffdbd9e0),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f2fa),
      surfaceContainer: Color(0xfff0ecf4),
      surfaceContainerHigh: Color(0xffeae7ef),
      surfaceContainerHighest: Color(0xffe4e1e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbec2ff),
      surfaceTint: Color(0xffbec2ff),
      onPrimary: Color(0xff262b60),
      primaryContainer: Color(0xff3d4279),
      onPrimaryContainer: Color(0xffe0e0ff),
      secondary: Color(0xffc5c4dd),
      onSecondary: Color(0xff2e2f42),
      secondaryContainer: Color(0xff444559),
      onSecondaryContainer: Color(0xffe1e0f9),
      tertiary: Color(0xffe7b9d5),
      onTertiary: Color(0xff45263c),
      tertiaryContainer: Color(0xff5e3c53),
      onTertiaryContainer: Color(0xffffd8ee),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff131318),
      onBackground: Color(0xffe4e1e9),
      surface: Color(0xff131318),
      onSurface: Color(0xffe4e1e9),
      surfaceVariant: Color(0xff46464f),
      onSurfaceVariant: Color(0xffc7c5d0),
      outline: Color(0xff91909a),
      outlineVariant: Color(0xff46464f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e9),
      inverseOnSurface: Color(0xff303036),
      inversePrimary: Color(0xff555a92),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff10144b),
      primaryFixedDim: Color(0xffbec2ff),
      onPrimaryFixedVariant: Color(0xff3d4279),
      secondaryFixed: Color(0xffe1e0f9),
      onSecondaryFixed: Color(0xff191a2c),
      secondaryFixedDim: Color(0xffc5c4dd),
      onSecondaryFixedVariant: Color(0xff444559),
      tertiaryFixed: Color(0xffffd8ee),
      onTertiaryFixed: Color(0xff2e1126),
      tertiaryFixedDim: Color(0xffe7b9d5),
      onTertiaryFixedVariant: Color(0xff5e3c53),
      surfaceDim: Color(0xff131318),
      surfaceBright: Color(0xff39393f),
      surfaceContainerLowest: Color(0xff0e0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff2a292f),
      surfaceContainerHighest: Color(0xff34343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );
}
