import 'package:flutter/material.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  TextTheme get primaryTextTheme => theme.primaryTextTheme;

  ActionIconThemeData? get actionIconTheme => theme.actionIconTheme;

  AppBarTheme get appBarTheme => theme.appBarTheme;

  BottomAppBarTheme get bottomAppBarTheme => theme.bottomAppBarTheme;

  BottomSheetThemeData get bottomSheetTheme => theme.bottomSheetTheme;

  ButtonBarThemeData get buttonBarTheme => theme.buttonBarTheme;

  ButtonThemeData get buttonTheme => theme.buttonTheme;

  CardTheme get cardTheme => theme.cardTheme;

  ChipThemeData get chipTheme => theme.chipTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  DialogTheme get dialogTheme => theme.dialogTheme;

  DividerThemeData get dividerTheme => theme.dividerTheme;

  FloatingActionButtonThemeData get floatingActionButtonTheme =>
      theme.floatingActionButtonTheme;

  IconThemeData get iconTheme => theme.iconTheme;

  IconButtonThemeData get iconButtonTheme => theme.iconButtonTheme;

  InputDecorationTheme get inputDecorationTheme => theme.inputDecorationTheme;

  MaterialTapTargetSize get materialTapTargetSize =>
      theme.materialTapTargetSize;

  NavigationRailThemeData get navigationRailTheme => theme.navigationRailTheme;

  OutlinedButtonThemeData get outlinedButtonTheme => theme.outlinedButtonTheme;

  TooltipThemeData get tooltipTheme => theme.tooltipTheme;

  PopupMenuThemeData get popupMenuTheme => theme.popupMenuTheme;

  MaterialBannerThemeData get bannerTheme => theme.bannerTheme;

  TabBarTheme get tabBarTheme => theme.tabBarTheme;

  ToggleButtonsThemeData get toggleButtonsTheme => theme.toggleButtonsTheme;

  Typography get typography => theme.typography;

  SnackBarThemeData get snackBarTheme => theme.snackBarTheme;

  BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      theme.bottomNavigationBarTheme;

  // Colors

  Color get primaryColor => theme.primaryColor;

  Color get primaryColorLight => theme.primaryColorLight;

  Color get primaryColorDark => theme.primaryColorDark;

  Color get hintColor => theme.hintColor;

  Color get canvasColor => theme.canvasColor;

  Color get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;

  Color get cardColor => theme.cardColor;

  Color get dividerColor => theme.dividerColor;

  Color get focusColor => theme.focusColor;

  Color get hoverColor => theme.hoverColor;

  Color get highlightColor => theme.highlightColor;

  Color get splashColor => theme.splashColor;

  Color get unselectedWidgetColor => theme.unselectedWidgetColor;

  Color get disabledColor => theme.disabledColor;

  Color get secondaryHeaderColor => theme.secondaryHeaderColor;

  Color get backgroundColor => theme.colorScheme.background;

  Color get dialogBackgroundColor => theme.dialogBackgroundColor;

  Color get indicatorColor => theme.indicatorColor;

  Color get hintTextColor => theme.hintColor;

  Color get shadowColor => theme.shadowColor;
}
