import 'controller/sign_in_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';
import 'package:riya_s_application6/widgets/custom_outlined_button.dart';
import 'package:riya_s_application6/widgets/custom_phone_number.dart';
import 'package:riya_s_application6/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 32.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgArtboard11,
                                  height: 206.v,
                                  width: 291.h),
                              Text("lbl_sign_in".tr,
                                  style:
                                      CustomTextStyles.headlineLargeGray90001),
                              SizedBox(height: 47.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_phone_number".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 10.v),
                              Obx(() => CustomPhoneNumber(
                                  country: controller.selectedCountry.value,
                                  controller: controller.phoneNumberController,
                                  onTap: (Country value) {
                                    controller.selectedCountry.value = value;
                                  })),
                              SizedBox(height: 20.v),
                              CustomElevatedButton(
                                  text: "lbl_sign_in2".tr,
                                  margin: EdgeInsets.only(right: 8.h),
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallWhiteA700Bold,
                                  onPressed: () {
                                    onTapSignIn();
                                  }),
                              SizedBox(height: 68.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 65.h),
                                  child: Column(children: [
                                    Text("lbl_sign_in_with".tr,
                                        style: CustomTextStyles
                                            .titleSmallGray90001),
                                    SizedBox(height: 18.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 17.h),
                                                  child: CustomIconButton(
                                                      height: 47.adaptSize,
                                                      width: 47.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(11.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlinePrimary,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgGoogleGLogo)))),
                                          Expanded(
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 17.h),
                                                  child: CustomIconButton(
                                                      height: 47.adaptSize,
                                                      width: 47.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(11.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlinePrimary,
                                                      onTap: () {
                                                        onTapBtnFacebook();
                                                      },
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgFacebook)))),
                                          Expanded(
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 17.h),
                                                  child: CustomIconButton(
                                                      height: 47.adaptSize,
                                                      width: 47.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(11.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlinePrimary,
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector))))
                                        ])
                                  ])),
                              SizedBox(height: 66.v),
                              CustomOutlinedButton(
                                  width: 239.h,
                                  text: "msg_continue_as_a_guest".tr,
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallBluegray90004),
                              SizedBox(height: 17.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_create_a_new_account2".tr,
                                        style: CustomTextStyles
                                            .labelLargeff9a9fa5),
                                    TextSpan(
                                        text: "lbl_sign_up".tr,
                                        style:
                                            CustomTextStyles.labelLargeff0275bb)
                                  ]),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignIn() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  onTapBtnFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
