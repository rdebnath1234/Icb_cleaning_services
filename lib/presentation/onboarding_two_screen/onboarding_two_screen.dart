import 'controller/onboarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

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
                                  horizontal: 16.h, vertical: 17.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomElevatedButton(
                                        height: 33.v,
                                        width: 61.h,
                                        text: "lbl_skip".tr,
                                        buttonStyle:
                                            CustomButtonStyles.fillGreenA,
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallOnSecondaryContainer,
                                        onPressed: () {
                                          onTapSkip();
                                        },
                                        alignment: Alignment.centerRight),
                                    SizedBox(height: 10.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              height: 390.v,
                                              width: 193.h,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Container(
                                                            height: 343.v,
                                                            width: 193.h,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .deepPurple100,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            96.h),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: appTheme
                                                                          .blueGray80014,
                                                                      spreadRadius:
                                                                          2.h,
                                                                      blurRadius:
                                                                          2.h,
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              10))
                                                                ]))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .img221,
                                                        height: 390.v,
                                                        width: 193.h,
                                                        radius: BorderRadius
                                                            .circular(96.h),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgClose,
                                              height: 16.adaptSize,
                                              width: 16.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 6.h,
                                                  top: 87.v,
                                                  bottom: 287.v))
                                        ]),
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
                                        width: 237.h,
                                        child: Text("msg_cleaning_expert".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme
                                                .textTheme.headlineLarge!
                                                .copyWith(height: 1.28))),
                                    SizedBox(height: 11.v),
                                    Text("msg_clean_homes_with".tr,
                                        style: CustomTextStyles
                                            .titleSmallBluegray700Medium),
                                    SizedBox(height: 52.v),
                                    CustomIconButton(
                                        height: 48.adaptSize,
                                        width: 48.adaptSize,
                                        padding: EdgeInsets.all(12.h),
                                        decoration:
                                            IconButtonStyleHelper.fillLightBlue,
                                        onTap: () {
                                          onTapBtnIconFilled();
                                        },
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgIconFilled)),
                                    SizedBox(height: 29.v)
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse228,
                          height: 48.v,
                          width: 45.h,
                          alignment: Alignment.topLeft)
                    ])))));
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapSkip() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.
  onTapBtnIconFilled() {
    Get.toNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }
}
