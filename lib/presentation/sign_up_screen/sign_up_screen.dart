import 'controller/sign_up_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/core/utils/validation_functions.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_phone_number.dart';
import 'package:riya_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 24.v,
                ),
                child: Column(
                  children: [
                    _buildArtboardTwelve(),
                    SizedBox(height: 27.v),
                    _buildComponentsInput1(),
                    SizedBox(height: 22.v),
                    _buildComponentsInput2(),
                    SizedBox(height: 21.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_phone_number".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Obx(
                        () => CustomPhoneNumber(
                          country: controller.selectedCountry.value,
                          controller: controller.phoneNumberController,
                          onTap: (Country value) {
                            controller.selectedCountry.value = value;
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildComponentsInput3(),
                    SizedBox(height: 34.v),
                    CustomElevatedButton(
                      text: "lbl_sign_up2".tr,
                      margin: EdgeInsets.only(
                        left: 13.h,
                        right: 5.h,
                      ),
                      buttonTextStyle: CustomTextStyles.titleSmallWhiteA700Bold,
                    ),
                    SizedBox(height: 17.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_already_have_an2".tr,
                            style: CustomTextStyles.labelLargeff9a9fa5,
                          ),
                          TextSpan(
                            text: "lbl_sign_in".tr,
                            style: CustomTextStyles.labelLargeff6759ff,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 6.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArtboardTwelve() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 249.v,
        width: 312.h,
        margin: EdgeInsets.only(left: 8.h),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArtboard11,
              height: 206.v,
              width: 291.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 7.v),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "lbl_sign_up2".tr,
                style: CustomTextStyles.headlineLargeGray90001,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgUiIconArrowBackwardFilled,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 7.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentsInput1() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_first_name".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 11.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray10003.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              children: [
                Container(
                  width: 39.h,
                  margin: EdgeInsets.only(bottom: 1.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_mr".tr,
                        style: CustomTextStyles.titleSmallGray90001_1,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDownGray60001,
                        height: 4.v,
                        width: 8.h,
                        margin: EdgeInsets.symmetric(vertical: 7.v),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_first_name".tr,
                    style: CustomTextStyles.titleSmallBluegray100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentsInput2() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_last_name".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 10.v),
          CustomTextFormField(
            controller: controller.lastNameController,
            hintText: "lbl_last_name".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentsInput3() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email2".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 11.v),
          CustomTextFormField(
            controller: controller.emailController,
            hintText: "lbl_email2".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
