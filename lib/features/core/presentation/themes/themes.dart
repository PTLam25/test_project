import 'package:flutter/material.dart';

part 'app_colors.dart';

final ThemeData appThemeData = ThemeData(
  colorScheme: ColorScheme(
    primary: AppColors.darkBlue,
    primaryVariant: AppColors.darkBlue,
    secondary: AppColors.gray,
    secondaryVariant: AppColors.gray,
    background: AppColors.white.shade300,
    surface: AppColors.white.shade300,
    onBackground: AppColors.darkBlue,
    error: AppColors.error,
    onError: AppColors.darkBlue,
    onPrimary: AppColors.white.shade300,
    onSecondary: AppColors.white.shade300,
    onSurface: AppColors.darkBlue,
    brightness: Brightness.light,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.white.shade200;
          }

          return AppColors.darkBlue;
        },
      ),
      foregroundColor: MaterialStateProperty.all(
        AppColors.white,
      ),
      minimumSize: MaterialStateProperty.all(
        const Size(
          264.0,
          48.0,
        ),
      ),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
      ),
      elevation: MaterialStateProperty.all(0.0),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
  iconTheme: IconThemeData(
    size: 18.0,
    color: AppColors.gray.shade300,
  ),
  scaffoldBackgroundColor: AppColors.white.shade200,
  textTheme: TextTheme(
    headline1: const TextStyle(
      color: AppColors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
    ),
    caption: TextStyle(
      color: AppColors.black.withOpacity(0.4),
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    ),
    subtitle1: const TextStyle(
      color: AppColors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
    ),
  ),
).copyWith(
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: AppColors.black,
    selectionHandleColor: Colors.transparent,
    selectionColor: AppColors.white.shade300,
  ),
);
