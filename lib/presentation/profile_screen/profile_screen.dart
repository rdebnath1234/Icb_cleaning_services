import 'controller/profile_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/core/utils/validation_functions.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:riya_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_phone_number.dart';
import 'package:riya_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                left: 1.h,
                bottom: 2.v,
              ),
              padding: EdgeInsets.only(
                left: 15.h,
                top: 87.v,
                right: 15.h,
              ),
              child: Column(
                children: [
                  _buildComponentsTitle(),
                  SizedBox(height: 19.v),
                  _buildComponentsProfile(),
                  SizedBox(height: 16.v),
                  Container(
                    margin: EdgeInsets.only(right: 1.h),
                    padding: EdgeInsets.all(16.h),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Text(
                          "lbl_phone_number".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 10.v),
                        _buildPhoneNumber(),
                        SizedBox(height: 25.v),
                        Text(
                          "lbl_e_mail".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 11.v),
                        _buildEmailInput(),
                        SizedBox(height: 26.v),
                        Text(
                          "lbl_gender".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 10.v),
                        _buildGenderInput(),
                        SizedBox(height: 25.v),
                        Text(
                          "lbl_date_of_birth".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 11.v),
                        _buildDateOfBirthInput(),
                      ],
                    ),
                  ),
                  SizedBox(height: 68.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUiIconArrowBackwardFilled,
        margin: EdgeInsets.fromLTRB(27.h, 23.v, 323.h, 24.v),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildEditProfileButton() {
    return CustomElevatedButton(
      height: 33.v,
      width: 98.h,
      text: "lbl_edit_profile".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 14.adaptSize,
          width: 14.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillWhiteA,
      buttonTextStyle: CustomTextStyles.labelLargeDeeppurpleA200,
    );
  }

  /// Section Widget
  Widget _buildComponentsTitle() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 32.v,
            child: VerticalDivider(
              width: 4.h,
              thickness: 4.v,
              indent: 6.h,
              endIndent: 6.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_profile".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(),
          _buildEditProfileButton(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentsProfile() {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.deepPurple100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder28,
            ),
            child: Container(
              height: 56.adaptSize,
              width: 56.adaptSize,
              decoration: AppDecoration.fillDeepPurple.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder28,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAvatar21,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImg18821,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_debashish_debnath".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_debashis".tr,
                  style: CustomTextStyles.labelLargeBluegray400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Obx(
      () => CustomPhoneNumber(
        country: controller.selectedCountry.value,
        controller: controller.phoneNumberController,
        onTap: (Country value) {
          controller.selectedCountry.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput() {
    return CustomTextFormField(
      controller: controller.emailInputController,
      hintText: "msg_xyz123_gmail_com".tr,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildGenderInput() {
    return CustomTextFormField(
      controller: controller.genderInputController,
      hintText: "lbl_male".tr,
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthInput() {
    return CustomTextFormField(
      controller: controller.dateOfBirthInputController,
      hintText: "lbl_not_set".tr,
      textInputAction: TextInputAction.done,
    );
  }
}
