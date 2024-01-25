import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(18.h),
                  border: Border.all(
                    color: appTheme.blueGray100,
                    width: 2.h,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.blueGray4000c,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        15,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue80001,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange200,
        borderRadius: BorderRadius.circular(29.h),
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple100,
        borderRadius: BorderRadius.circular(29.h),
      );
  static BoxDecoration get fillLightBlueTL29 => BoxDecoration(
        color: appTheme.lightBlue100,
        borderRadius: BorderRadius.circular(29.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(29.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillDeepPurpleTL36 => BoxDecoration(
        color: appTheme.deepPurple100,
        borderRadius: BorderRadius.circular(36.h),
      );
  static BoxDecoration get fillDeepOrangeTL36 => BoxDecoration(
        color: appTheme.deepOrange200,
        borderRadius: BorderRadius.circular(36.h),
      );
  static BoxDecoration get fillLightBlueTL36 => BoxDecoration(
        color: appTheme.lightBlue100,
        borderRadius: BorderRadius.circular(36.h),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10002,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get outlineBlueAF => BoxDecoration(
        color: appTheme.lightBlue80001,
        borderRadius: BorderRadius.circular(18.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueA4000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              15,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueAFTL18 => BoxDecoration(
        color: appTheme.deepPurpleA200,
        borderRadius: BorderRadius.circular(18.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueA4000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              15,
            ),
          ),
        ],
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillGrayTL24 => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineGrayTL20 => BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: appTheme.gray40001.withOpacity(0.3),
          width: 1.h,
        ),
      );
}
