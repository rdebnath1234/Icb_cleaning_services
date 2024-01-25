import 'controller/address_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_subtitle.dart';
import 'package:riya_s_application6/widgets/app_bar/custom_app_bar.dart';

class AddressOneScreen extends GetWidget<AddressOneController> {
  const AddressOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5003,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 9.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgShutterstock420460471,
                              height: 186.v,
                              width: 343.h,
                              radius: BorderRadius.circular(14.h)),
                          SizedBox(height: 30.v),
                          Container(
                              width: 320.h,
                              margin: EdgeInsets.only(left: 12.h, right: 11.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_mission".tr,
                                        style: CustomTextStyles
                                            .titleSmallff000000),
                                    TextSpan(
                                        text: "msg_your_mess_is_our".tr,
                                        style: CustomTextStyles
                                            .bodyMediumInterff000000),
                                    TextSpan(
                                        text: "lbl_vision".tr,
                                        style: CustomTextStyles
                                            .titleSmallff000000),
                                    TextSpan(
                                        text: "msg_customer_we_are".tr,
                                        style: CustomTextStyles
                                            .bodyMediumInterff000000),
                                    TextSpan(
                                        text: "lbl_employee".tr,
                                        style: CustomTextStyles
                                            .titleSmallff000000),
                                    TextSpan(
                                        text: "msg_we_are_commited".tr,
                                        style: CustomTextStyles
                                            .bodyMediumInterff000000
                                            .copyWith(height: 1.60))
                                  ]),
                                  textAlign: TextAlign.center))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgUiIconArrowBackwardFilled,
            margin: EdgeInsets.only(left: 28.h, top: 24.v, bottom: 24.v),
            onTap: () {
              onTapImage();
            }),
        title: AppbarSubtitle(
            text: "lbl_about_us".tr, margin: EdgeInsets.only(left: 24.h)),
        styleType: Style.bgFill);
  }

  /// Navigates to the dateTimeBottomSheetScreen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.dateTimeBottomSheetScreen,
    );
  }
}
