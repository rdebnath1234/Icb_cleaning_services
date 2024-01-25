import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1.28),
                        colors: [
                      appTheme.lightBlue80001,
                      appTheme.blueGray90003
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 42.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 1.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgAsset11,
                              height: 175.v,
                              width: 290.h,
                              onTap: () {
                                onTapImgAssetEleven();
                              })
                        ])))));
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  onTapImgAssetEleven() {
    Get.toNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }
}
