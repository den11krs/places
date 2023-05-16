import 'package:flutter/material.dart';

abstract class AppLightColors {
  static const appPrimaryColor = Color(0xFF252849);
  static const appPrimaryVariantColor = Color(0xFF3B3E5B);
  static const appPrimaryVariant2Color = Color(0xFF7C7E92);

  static const appSecondaryColor = Color(0xFF4CAF50);
  static const appSecondaryVariantColor = Color(0xFFFCDD3D);

  static const appBackgroundColor = Color(0xFFFFFFFF);
  static const appSurfaceColor = Color(0xFFF5F5F5);
  static const appErrorColor = Color(0xFFEF4343);

  // Is there a case of anything on the primary color?
  // Until it arises Im going to keep it white.
  static const appOnPrimaryColor = Color(0xFFFFFFFF);
  static const appOnSecondaryColor = Color(0xFFFFFFFF);

  static const appOnBackgroundColor = Color(0xFF252849);
  static const appOnSurfaceColor = Color(0xFF252849);
  static const appOnErrorColor = Color(0xFFFFFFFF);

  static const appInactiveBlack = Color(0x8F7C7E92);
}

abstract class AppDarkColors {
  static const appPrimaryColor = Color(0xFFFFFFFF);
  static const appPrimaryVariantColor = Color(0xFFFFFFFF);
  static const appPrimaryVariant2Color = Color(0xFF7C7E92);

  static const appSecondaryColor = Color(0xFF4CAF50);
  static const appSecondaryVariantColor = Color(0xFFFCDD3D);

  static const appBackgroundColor = Color(0xFF21222C);
  static const appSurfaceColor = Color(0xFF1A1A20);
  static const appErrorColor = Color(0xFFCF2A2A);

  // Is there a case of anything on the primary color?
  // Until it arises Im going to keep it white.
  static const appOnPrimaryColor = Color(0xFFFFFFFF);
  static const appOnSecondaryColor = Color(0xFFFFFFFF);

  static const appOnBackgroundColor = Color(0xFFFFFFFF);
  static const appOnSurfaceColor = Color(0xFFFFFFFF);
  static const appOnErrorColor = Color(0xFFFFFFFF);

  static const appInactiveBlack = Color(0x8F7C7E92);
}

abstract class AppDarkColorsOld {
  static const appMainColor = Color(0xFF252849);
  static const appSecondaryColor = Color(0xFF3B3E5B);

  static const appSecondary2Color = Color(0xFF7C7E92);
  static const appInactiveSecondary2Color =
      Color(0x8F7C7E92); // it was inactiveBlack

  static const appIconsColor = Color(0xFFF5F5F5);

  static const appBackgroundColor = Color(0xFF21222C);
  static const appBackgroundColor2 = Color(0xFF1A1A20);
  //static const appBackgroundColor3 = Color(0xFF2E2E2E);

  static const appGreenColor = Color(0xFF6ADA6F);
  static const appRedColor = Color(0xFFCF2A2A);
  // static const appYellowColor = Color(0xFFFCDD3D);

  static const appMainFontColor = Color(0xFFFFFFFF);
  static const appSecondaryFontColor = Color(0xFF7C7E92);
}
