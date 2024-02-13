import 'controller/service_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:riya_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:riya_s_application6/widgets/custom_drop_down.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';
import 'package:riya_s_application6/widgets/custom_outlined_button.dart';

class ServiceDetailsScreen extends GetWidget<ServiceDetailsController> {
  const ServiceDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: 982.v,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(bottom: 40.v),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.only(
                                      left: 14.h, right: 14.h, bottom: 111.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 290.v),
                                        _buildComponentsProperty(),
                                        SizedBox(height: 12.v),
                                        _buildComponentsService()
                                      ]))),
                          _buildNineteen(),
                          Opacity(
                              opacity: 0.22,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup34082,
                                  height: 233.v,
                                  width: 200.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(top: 47.v))),
                          _buildComponentsTopNavigation(),
                          _buildComponentsDescription()
                        ])))),
            bottomNavigationBar: _buildComponentsBottom()));
  }

  /// Section Widget
  Widget _buildComponentsProperty() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Row(children: [
                SizedBox(
                    height: 23.v,
                    child: VerticalDivider(
                        width: 4.h, thickness: 4.v, endIndent: 3.h)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text("msg_type_of_property".tr,
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 19.v),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 19.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 19.h),
                                child: _buildCustomerOffice(
                                    officeText: "lbl_home".tr)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 19.h),
                                child: _buildCustomerOffice(
                                    officeText: "lbl_office".tr)),
                            Padding(
                                padding: EdgeInsets.only(left: 19.h),
                                child: _buildCustomerOffice(
                                    officeText: "lbl_vila".tr))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildComponentsService() {
    return Container(
        margin: EdgeInsets.only(right: 5.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Text("lbl_number_of_hours".tr,
                    style: CustomTextStyles.titleMediumGray90001)),
            Spacer(),
            CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                child: CustomImageView(imagePath: ImageConstant.imgUser36x36)),
            Padding(
                padding: EdgeInsets.only(left: 18.h, top: 8.v, bottom: 5.v),
                child: Text("lbl_2".tr, style: theme.textTheme.bodyLarge)),
            CustomImageView(
                imagePath: ImageConstant.imgFacebookLightBlue80001,
                height: 36.adaptSize,
                width: 36.adaptSize,
                margin: EdgeInsets.only(left: 17.h))
          ]),
          SizedBox(height: 16.v),
          Divider(color: appTheme.gray20001),
          SizedBox(height: 15.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Text("msg_number_of_bedrooms".tr,
                    style: CustomTextStyles.titleMediumGray90001)),
            Spacer(),
            CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                child: CustomImageView(imagePath: ImageConstant.imgUser1)),
            Padding(
                padding: EdgeInsets.only(left: 17.h, top: 8.v, bottom: 5.v),
                child: Text("lbl_0".tr, style: theme.textTheme.bodyLarge)),
            Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgCloseWhiteA70036x36)))
          ]),
          SizedBox(height: 18.v),
          Divider(color: appTheme.gray20001),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(top: 8.v, bottom: 7.v),
                    child: Text("msg_number_of_wadrobe".tr,
                        style: CustomTextStyles.titleMediumGray90001)),
                Spacer(),
                CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    child: CustomImageView(imagePath: ImageConstant.imgUser1)),
                Padding(
                    padding: EdgeInsets.only(left: 17.h, top: 8.v, bottom: 5.v),
                    child: Text("lbl_0".tr, style: theme.textTheme.bodyLarge)),
                Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgCloseWhiteA70036x36)))
              ])),
          SizedBox(height: 16.v),
          Divider(color: appTheme.gray20001),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(top: 9.v, bottom: 6.v),
                    child: Text("msg_number_of_fridge".tr,
                        style: CustomTextStyles.titleMediumGray90001)),
                Spacer(),
                CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    child: CustomImageView(imagePath: ImageConstant.imgUser1)),
                Padding(
                    padding: EdgeInsets.only(left: 17.h, top: 8.v, bottom: 5.v),
                    child: Text("lbl_0".tr, style: theme.textTheme.bodyLarge)),
                Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgCloseWhiteA70036x36)))
              ])),
          SizedBox(height: 10.v)
        ]));
  }

  /// Section Widget
  Widget _buildNineteen() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 72.v),
            decoration: AppDecoration.fillGreen,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                      height: 21.v,
                      width: 47.h,
                      text: "lbl_4_5".tr.toUpperCase(),
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 3.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 12.v,
                              width: 10.h)),
                      buttonStyle: CustomButtonStyles.outlineDeepOrange,
                      buttonTextStyle: CustomTextStyles
                          .labelLargeAbhayaLibreMediumWhiteA700),
                  SizedBox(height: 8.v),
                  SizedBox(
                      width: 121.h,
                      child: Text("msg_regular_cleaning2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.headlineMediumOnErrorContainer
                              .copyWith(height: 1.32))),
                  SizedBox(height: 3.v)
                ])));
  }

  /// Section Widget
  Widget _buildComponentsTopNavigation() {
    return Align(
        alignment: Alignment.topRight,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomAppBar(
                  height: 279.v,
                  leadingWidth: 374.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgUnion,
                      margin: EdgeInsets.fromLTRB(30.h, 4.v, 326.h, 4.v))),
              SizedBox(
                  height: 280.v,
                  width: 240.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Opacity(
                        opacity: 0.22,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgGroup34082,
                            height: 273.v,
                            width: 232.h,
                            alignment: Alignment.center)),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 267.v,
                        width: 240.h,
                        alignment: Alignment.center)
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildComponentsDescription() {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
            margin: EdgeInsets.only(left: 11.h, top: 216.v, right: 35.h),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("lbl_description".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 7.v),
                  SizedBox(
                      width: 294.h,
                      child: Text("msg_additional_hours".tr,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumInterBlack900))
                ])));
  }

  /// Section Widget
  Widget _buildComponentsBottom() {
    return SizedBox(
        height: 124.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(height: 120.v, width: double.maxFinite)),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 5.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 16.v),
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 3.v, right: 5.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_total".tr,
                                            style: CustomTextStyles
                                                .titleSmallff6f767d),
                                        TextSpan(text: "  ".tr),
                                        TextSpan(
                                            text: "lbl_aed_128".tr,
                                            style: CustomTextStyles
                                                .titleSmallff1a1d1f)
                                      ]),
                                      textAlign: TextAlign.left),
                                  CustomDropDown(
                                      width: 80.h,
                                      hintText: "lbl_bill_details".tr,
                                      items: controller.serviceDetailsModelObj
                                          .value.dropdownItemList!.value,
                                      onChanged: (value) {
                                        controller.onSelected(value);
                                      })
                                ])),
                        Padding(
                            padding: EdgeInsets.only(top: 23.v, right: 5.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomOutlinedButton(
                                          text: "lbl_save_draft".tr,
                                          margin: EdgeInsets.only(right: 4.h))),
                                  Expanded(
                                      child: CustomElevatedButton(
                                          text: "lbl_book_now".tr,
                                          margin: EdgeInsets.only(left: 4.h),
                                          onPressed: () {
                                            onTapBookNow();
                                          }))
                                ]))
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildCustomerOffice({required String officeText}) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              CustomIconButton(
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  padding: EdgeInsets.all(18.h),
                  decoration: IconButtonStyleHelper.outlineBlueAF,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconOutlineWhiteA700)),
              SizedBox(height: 13.v),
              Text(officeText,
                  style: CustomTextStyles.labelLargeOnPrimary
                      .copyWith(color: theme.colorScheme.onPrimary))
            ])));
  }

  /// Navigates to the dateTimeBottomSheetScreen when the action is triggered.
  onTapBookNow() {
    Get.toNamed(
      AppRoutes.dateTimeBottomSheetScreen,
    );
  }
}
