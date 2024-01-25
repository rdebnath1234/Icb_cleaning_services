import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeABeeZeeBlack900 =>
      theme.textTheme.bodyLarge!.aBeeZee.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get bodyLargeABeeZeeBluegray90006 =>
      theme.textTheme.bodyLarge!.aBeeZee.copyWith(
        color: appTheme.blueGray90006,
        fontSize: 17.fSize,
      );
  static get bodyLargeRobotoWhiteA700 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumABeeZeeBluegray40001 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumInterff000000 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF000000),
        fontSize: 15.fSize,
      );
  // Display text style
  static get displayMediumABeeZeeWhiteA700 =>
      theme.textTheme.displayMedium!.aBeeZee.copyWith(
        color: appTheme.whiteA700,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeBluegray900 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineLargeGray90001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumOnErrorContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get headlineSmallGray900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get headlineSmallRobotoWhiteA700 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeAbhayaLibreMediumBluegray900 =>
      theme.textTheme.labelLarge!.abhayaLibreMedium.copyWith(
        color: appTheme.blueGray900,
        fontSize: 13.fSize,
      );
  static get labelLargeAbhayaLibreMediumWhiteA700 =>
      theme.textTheme.labelLarge!.abhayaLibreMedium.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeBluegray100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray100,
      );
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeDeeppurpleA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get labelLargeGray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 13.fSize,
      );
  static get labelLargeGray5002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5002,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get labelLargeGray60001Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray60001SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray60001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff0275bb => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF0275BB),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeff1a1d1f => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF1A1D1F),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeff6759ff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF6759FF),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeff6f767d => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF6F767D),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeff9a9fa5 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF9A9FA5),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMediumAbhayaLibreMediumBlack900 =>
      theme.textTheme.titleMedium!.abhayaLibreMedium.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumAbhayaLibreMediumBluegray90006 =>
      theme.textTheme.titleMedium!.abhayaLibreMedium.copyWith(
        color: appTheme.blueGray90006,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumff110c26 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF110C26),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallAbhayaLibreMediumBlack900 =>
      theme.textTheme.titleSmall!.abhayaLibreMedium.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallAbhayaLibreMediumBluegray200 =>
      theme.textTheme.titleSmall!.abhayaLibreMedium.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallAbhayaLibreMediumBluegray40001 =>
      theme.textTheme.titleSmall!.abhayaLibreMedium.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray100,
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray50001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
      );
  static get titleSmallBluegray700Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray700Medium14 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray90004 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90004,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDeeppurpleA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get titleSmallGray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
        fontSize: 14.fSize,
      );
  static get titleSmallGray50Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: 14.fSize,
      );
  static get titleSmallGray60001Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
      );
  static get titleSmallGray90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallGreen300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green300,
        fontSize: 14.fSize,
      );
  static get titleSmallGreen500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green500,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLightblue800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightBlue800,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLightblue80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightBlue80001,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOrangeA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orangeA200,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoBlack900 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.31),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallWhiteA700Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallff000000 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallff1a1d1f => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF1A1D1F),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallff6f767d => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF6F767D),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff6f767d14 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF6F767D),
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get abhayaLibreMedium {
    return copyWith(
      fontFamily: 'Abhaya Libre Medium',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }
}
