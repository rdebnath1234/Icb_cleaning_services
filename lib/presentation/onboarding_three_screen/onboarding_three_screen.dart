import 'controller/onboarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  const OnboardingThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: SizedBox(
                    height: SizeUtils.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 48.h, vertical: 47.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 39.h, right: 22.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      height: 402.v,
                                                      width: 193.h,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child:
                                                                    Container(
                                                                        height: 343
                                                                            .v,
                                                                        width: 193
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.deepPurple100,
                                                                            borderRadius: BorderRadius.circular(96.h),
                                                                            boxShadow: [
                                                                              BoxShadow(color: appTheme.blueGray80014, spreadRadius: 2.h, blurRadius: 2.h, offset: Offset(0, 10))
                                                                            ]))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgNv3ehwca7n9hpdx,
                                                                height: 402.v,
                                                                width: 193.h,
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        96.h),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClose,
                                                      height: 16.adaptSize,
                                                      width: 16.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 6.h,
                                                          top: 99.v,
                                                          bottom: 287.v))
                                                ]))),
                                    SizedBox(height: 58.v),
                                    SizedBox(
                                        height: 8.v,
                                        child: AnimatedSmoothIndicator(
                                            activeIndex: 0,
                                            count: 2,
                                            effect: ScrollingDotsEffect(
                                                activeDotColor:
                                                    Color(0X1212121D),
                                                dotHeight: 8.v))),
                                    SizedBox(height: 29.v),
                                    SizedBox(
                                        width: 275.h,
                                        child: Text("msg_professional_home".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme
                                                .textTheme.headlineLarge!
                                                .copyWith(height: 1.28))),
                                    SizedBox(height: 9.v),
                                    Container(
                                        width: 214.h,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 31.h),
                                        child: Text("msg_get_a_clean_home".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .titleSmallBluegray700Medium
                                                .copyWith(height: 1.73))),
                                    SizedBox(height: 20.v),
                                    CustomElevatedButton(
                                        width: 166.h,
                                        text: "lbl_get_started".tr,
                                        buttonStyle:
                                            CustomButtonStyles.fillLightBlue,
                                        onPressed: () {
                                          onTapGetStarted();
                                        })
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse22848x45,
                          height: 48.v,
                          width: 45.h,
                          alignment: Alignment.topLeft)
                    ])))));
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapGetStarted() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
