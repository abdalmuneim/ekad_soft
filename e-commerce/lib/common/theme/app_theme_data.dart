import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

ThemeData? get appThemeData => ThemeData(

    /// Main Color

    primaryColor: AppColors.primary,
    primaryColorLight: AppColors.gold,
    disabledColor: Colors.grey,
    canvasColor: AppColors.secondary,
    scaffoldBackgroundColor: AppColors.secondary,
    primaryTextTheme: GoogleFonts.almaraiTextTheme(),

    /// CardViewTheme

    cardTheme: const CardTheme(
        color: Colors.white, shadowColor: Colors.grey, elevation: 4),

    /// AppBar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColors.white,
      elevation: 0,
      shadowColor: Colors.black,
      iconTheme: const IconThemeData(color: AppColors.secondary, size: 30),
      titleTextStyle: GoogleFonts.almarai(
        fontSize: 12.sp,
        color: AppColors.secondary,
        fontWeight: FontWeight.w700,
      ),
    ),

    // elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        minimumSize: Size(10.w, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        textStyle: GoogleFonts.almarai(
          fontSize: 10.sp,
          color: Colors.black,
        ),
        backgroundColor: AppColors.white,
      ),
    ),

    /// tabBarTheme
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.secondary,
      unselectedLabelColor: AppColors.black.withOpacity(.5),
      dividerColor: AppColors.secondary,
      indicatorSize: TabBarIndicatorSize.tab,
      unselectedLabelStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      labelStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    /// check box theme
    checkboxTheme: const CheckboxThemeData(
      visualDensity: VisualDensity.comfortable,
    ),

    /// icon theme
    iconTheme: const IconThemeData(color: AppColors.black, size: 30),

    /// text form field theme
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: AppColors.black,
      fillColor: Colors.white,
      iconColor: AppColors.black,
      labelStyle: GoogleFonts.almarai(
        color: AppColors.black,
        fontSize: 12.sp,
      ),
      hintStyle: GoogleFonts.almarai(
        color: AppColors.secondary.withOpacity(.4),
        fontSize: 8.sp,
      ),
    ),

    /// divider
    dividerTheme: const DividerThemeData(thickness: 1),

    /// text theme
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.almarai(
        fontSize: 25.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineMedium: GoogleFonts.almarai(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      headlineSmall: GoogleFonts.almarai(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      titleLarge: GoogleFonts.almarai(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      titleMedium: GoogleFonts.almarai(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      titleSmall: GoogleFonts.almarai(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      labelLarge: GoogleFonts.almarai(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      labelMedium: GoogleFonts.almarai(
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      labelSmall: GoogleFonts.almarai(
        fontSize: 10.sp,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.almarai(
        fontSize: 9.sp,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
      bodySmall: GoogleFonts.almarai(
        fontSize: 9.sp,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),

    /// dropdownMenuTheme
    dropdownMenuTheme: const DropdownMenuThemeData());
