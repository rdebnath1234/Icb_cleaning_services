import 'controller/verify_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:riya_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_pin_code_text_field.dart';

class VerifyCodeScreen extends GetWidget<VerifyCodeController> {
  const VerifyCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAppBar(),
                  Spacer(flex: 25),
                  _buildVerificationSection(),
                  Spacer(flex: 74)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 374.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgUiIconArrowBackwardFilled,
            margin: EdgeInsets.fromLTRB(28.h, 24.v, 322.h, 24.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildVerificationSection() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text("msg_verification_code".tr,
                  style: theme.textTheme.headlineLarge)),
          SizedBox(height: 13.v),
          Container(
              width: 282.h,
              margin: EdgeInsets.only(left: 10.h, right: 41.h),
              child: Text("msg_we_just_send_you".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallBluegray700Medium14
                      .copyWith(height: 1.71))),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(left: 10.h, right: 11.h),
              child: Obx(() => CustomPinCodeTextField(
                  context: Get.context!,
                  controller: controller.otpController.value,
                  onChanged: (value) {}))),
          SizedBox(height: 40.v),
          CustomElevatedButton(
              text: "lbl_continue".tr,
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.titleSmallBluegray90004,
              onPressed: () {
                onTapContinue();
              }),
          SizedBox(height: 26.v),
          Align(
              alignment: Alignment.center,
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_re_send_code_in".tr,
                        style: CustomTextStyles.titleMediumff110c26),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_0_20".tr,
                        style: CustomTextStyles.titleMediumff110c26)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Navigates to the homeVtwoContainerScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.homeVtwoContainerScreen,
    );
  }
}
