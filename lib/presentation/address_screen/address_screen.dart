import 'controller/address_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_subtitle.dart';
import 'package:riya_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:riya_s_application6/widgets/custom_checkbox_button.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';
import 'package:riya_s_application6/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class AddressScreen extends GetWidget<AddressController> {
  const AddressScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5003,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildThirteen(),
              Divider(
                color: appTheme.gray300A9,
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text(
                    "lbl_addresses".tr,
                    style:
                        CustomTextStyles.titleMediumAbhayaLibreMediumBlack900,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildAddressCard(),
              SizedBox(height: 35.v),
              CustomElevatedButton(
                text: "lbl_save_address".tr,
                margin: EdgeInsets.only(
                  left: 11.h,
                  right: 21.h,
                ),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleSmallBold,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 71.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUiIconArrowBackwardFilled,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 23.v,
          bottom: 23.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_address".tr,
        margin: EdgeInsets.only(left: 24.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildThirteen() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              "msg_add_new_addrress".tr,
              style: CustomTextStyles.titleMediumAbhayaLibreMediumBlack900,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightDeepPurple800,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 13.v,
              right: 4.h,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressCard() {
    return Container(
      width: 345.h,
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          SizedBox(
            height: 205.v,
            width: 319.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(right: 4.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 26.v,
                    ),
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "lbl_italy".tr,
                            style: CustomTextStyles
                                .titleSmallAbhayaLibreMediumBlack900,
                          ),
                        ),
                        SizedBox(height: 106.v),
                        Obx(
                          () => CustomCheckboxButton(
                            text: "msg_set_address_defaut".tr,
                            value: controller.setAddressDefault.value,
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            onChange: (value) {
                              controller.setAddressDefault.value = value;
                            },
                          ),
                        ),
                        SizedBox(height: 5.v),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 301.h,
                    child: Divider(
                      color: appTheme.gray300A9,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      bottom: 43.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_rosecrans_ave_suite".tr,
                          style: CustomTextStyles
                              .titleSmallAbhayaLibreMediumBluegray40001,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "msg_501_425_906_4618".tr,
                          style: CustomTextStyles
                              .titleSmallAbhayaLibreMediumBluegray40001,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_zip_code_92053".tr,
                          style: CustomTextStyles
                              .titleSmallAbhayaLibreMediumBluegray40001,
                        ),
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          alignment: Alignment.centerRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgControlsButton,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            height: 170.v,
            width: 319.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(right: 4.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_paris".tr,
                            style: CustomTextStyles
                                .titleSmallAbhayaLibreMediumBlack900,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "msg_fondamenta_zitelle".tr,
                            style: CustomTextStyles
                                .titleSmallAbhayaLibreMediumBluegray40001,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "msg_501_425_906_4618".tr,
                            style: CustomTextStyles
                                .titleSmallAbhayaLibreMediumBluegray40001,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_zip_code_92053".tr,
                            style: CustomTextStyles
                                .titleSmallAbhayaLibreMediumBluegray40001,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        Obx(
                          () => CustomRadioButton(
                            text: "msg_set_address_defaut".tr,
                            value: "msg_set_address_defaut".tr,
                            groupValue: controller.radioGroup.value,
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            onChange: (value) {
                              controller.radioGroup.value = value;
                            },
                          ),
                        ),
                        SizedBox(height: 11.v),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.v),
                  child: CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    alignment: Alignment.bottomRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgControlsButton,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
