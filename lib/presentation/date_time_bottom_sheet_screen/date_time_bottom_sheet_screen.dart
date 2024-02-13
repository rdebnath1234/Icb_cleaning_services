import 'controller/date_time_bottom_sheet_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_bottom_bar.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_floating_text_field.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';

class DateTimeBottomSheetScreen
    extends GetWidget<DateTimeBottomSheetController> {
  const DateTimeBottomSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 988.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          _buildComponentsService(),
                          _buildBillSection(),
                          _buildComponentsDescription(),
                          _buildRegularCleaning(),
                          _buildComponentsProperty(),
                          Opacity(
                              opacity: 0.9,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgOverlay,
                                  height: 812.v,
                                  width: 375.h,
                                  alignment: Alignment.topCenter)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.all(16.h),
                                  decoration: AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL16),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _buildTitle(),
                                        SizedBox(height: 20.v),
                                        _buildDate(),
                                        SizedBox(height: 16.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.h),
                                            child: CustomFloatingTextField(
                                                controller:
                                                    controller.timeController,
                                                labelText:
                                                    "lbl_time".tr.toUpperCase(),
                                                labelStyle:
                                                    theme.textTheme.titleSmall!,
                                                hintText:
                                                    "lbl_time".tr.toUpperCase(),
                                                textInputAction:
                                                    TextInputAction.done,
                                                prefix: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 16.h,
                                                        right: 12.h),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIconOutlineGray60001,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 72.v))),
                                        SizedBox(height: 20.v),
                                        Text("lbl_add_a_note".tr,
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 18.v),
                                        _buildNoteSection(),
                                        SizedBox(height: 23.v),
                                        _buildPriceSection(),
                                        SizedBox(height: 24.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: 326.h,
                                                margin: EdgeInsets.only(
                                                    right: 16.h),
                                                child: Text(
                                                    "msg_important_keep".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack900))),
                                        SizedBox(height: 12.v),
                                        CustomElevatedButton(
                                            text: "lbl_continue".tr,
                                            buttonStyle:
                                                CustomButtonStyles.fillPrimary,
                                            buttonTextStyle:
                                                CustomTextStyles.titleSmallBold)
                                      ])))
                        ])))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: _buildBottomBarSection())));
  }

  /// Section Widget
  Widget _buildComponentsService() {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              _buildBedroomSection(
                  numberOfBedrooms: "lbl_number_of_units".tr,
                  userImage: ImageConstant.imgUserWhiteA700,
                  zero: "lbl_2".tr,
                  closeImage: ImageConstant.imgCloseDeepPurpleA200),
              SizedBox(height: 16.v),
              Divider(color: appTheme.gray20001),
              SizedBox(height: 15.v),
              _buildBedroomSection(
                  numberOfBedrooms: "msg_number_of_bedrooms".tr,
                  userImage: ImageConstant.imgUserWhiteA70036x36,
                  zero: "lbl_0".tr,
                  closeImage: ImageConstant.imgCloseWhiteA700)
            ])));
  }

  /// Section Widget
  Widget _buildBillSection() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(bottom: 32.v),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillWhiteA,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_total".tr,
                              style: CustomTextStyles.titleSmallff6f767d),
                          TextSpan(text: "  ".tr),
                          TextSpan(
                              text: "lbl_usd_150_50".tr,
                              style: CustomTextStyles.titleSmallff1a1d1f)
                        ]),
                        textAlign: TextAlign.left),
                    Spacer(),
                    Text("lbl_bill_details".tr,
                        style: CustomTextStyles.titleSmallOrangeA200),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector3,
                        height: 3.v,
                        width: 6.h,
                        margin:
                            EdgeInsets.only(left: 7.h, top: 7.v, bottom: 6.v))
                  ]),
                  SizedBox(height: 23.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        margin: EdgeInsets.only(right: 4.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 44.h, vertical: 11.v),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12),
                        child: Text("lbl_save_draft".tr,
                            style: CustomTextStyles.titleSmallBold)),
                    Container(
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 47.h, vertical: 14.v),
                        decoration: AppDecoration.fillDeepPurpleA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12),
                        child: Text("lbl_book_now".tr,
                            style: CustomTextStyles.titleSmallGray50Bold))
                  ])
                ])));
  }

  /// Section Widget
  Widget _buildComponentsDescription() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 172.v),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    SizedBox(
                        height: 22.v,
                        child: VerticalDivider(
                            width: 4.h, thickness: 4.v, endIndent: 2.h)),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("lbl_description".tr,
                            style: theme.textTheme.titleMedium))
                  ]),
                  SizedBox(height: 17.v),
                  Container(
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 48.v),
                        Container(
                            width: 311.h,
                            padding: EdgeInsets.all(4.h),
                            decoration: AppDecoration.fillGray100.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL12),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 90.v),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgThumbsUpGray60001,
                                      height: 13.adaptSize,
                                      width: 13.adaptSize)
                                ]))
                      ]))
                ])));
  }

  /// Section Widget
  Widget _buildRegularCleaning() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 269.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 24.v),
                      decoration: AppDecoration.fillGreen,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgUiIconArrowBackwardFilled,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 12.h)),
                            SizedBox(height: 45.v),
                            SizedBox(
                                height: 106.v,
                                width: 121.h,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                              width: 121.h,
                                              child: Text(
                                                  "msg_regular_cleaning2".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.headlineMedium!
                                                      .copyWith(
                                                          height: 1.32)))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 74.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: 21.v,
                                                        width: 47.h,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .deepOrange300,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.h),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  color: appTheme
                                                                      .deepOrange300
                                                                      .withOpacity(
                                                                          0.05),
                                                                  spreadRadius:
                                                                      2.h,
                                                                  blurRadius:
                                                                      2.h,
                                                                  offset:
                                                                      Offset(
                                                                          0, 5))
                                                            ])),
                                                    SizedBox(height: 3.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Row(children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgSignal,
                                                              height: 12.v,
                                                              width: 10.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          2.v)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          3.h),
                                                              child: Text(
                                                                  "lbl_4_5"
                                                                      .tr
                                                                      .toUpperCase(),
                                                                  style: CustomTextStyles
                                                                      .labelLargeAbhayaLibreMediumWhiteA700))
                                                        ]))
                                                  ])))
                                    ])),
                            SizedBox(height: 31.v)
                          ]))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                      height: 245.v,
                      width: 210.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Opacity(
                            opacity: 0.22,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup34082,
                                height: 245.v,
                                width: 203.h,
                                alignment: Alignment.center)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage1219x210,
                            height: 219.v,
                            width: 210.h,
                            alignment: Alignment.bottomCenter),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 245.v,
                                width: 210.h,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Opacity(
                                          opacity: 0.22,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup34082,
                                              height: 245.v,
                                              width: 203.h,
                                              alignment: Alignment.center)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage1219x210,
                                          height: 219.v,
                                          width: 210.h,
                                          alignment: Alignment.bottomCenter)
                                    ])))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildComponentsProperty() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 16.h, top: 229.v, right: 16.h),
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
                        height: 22.v,
                        child: VerticalDivider(
                            width: 4.h, thickness: 4.v, endIndent: 2.h)),
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
                                    child: _buildPropertySection(
                                        officeText: "lbl_home".tr)),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 19.h),
                                    child: _buildPropertySection(
                                        officeText: "lbl_office".tr)),
                                Padding(
                                    padding: EdgeInsets.only(left: 19.h),
                                    child: _buildPropertySection(
                                        officeText: "lbl_vila".tr))
                              ])))
                ])));
  }

  /// Section Widget
  Widget _buildTitle() {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 36.v,
                  child: VerticalDivider(
                      width: 4.h,
                      thickness: 4.v,
                      indent: 3.h,
                      endIndent: 13.h)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 10.v),
                  child: Text("msg_select_your_date".tr,
                      style: theme.textTheme.titleMedium)),
              Spacer(),
              CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  onTap: () {
                    onTapBtnUIIconCloseLight();
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgUiIconCloseLight))
            ]));
  }

  /// Section Widget
  Widget _buildDate() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
        decoration: AppDecoration.fillDeepOrange
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconOutlineBlueGray80002,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 1.v, bottom: 17.v)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_date".tr.toUpperCase(),
                            style: CustomTextStyles.labelLargeGray60001_1),
                        SizedBox(height: 6.v),
                        Text("msg_select_your_date2".tr,
                            style: theme.textTheme.titleSmall)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildNoteSection() {
    return GestureDetector(
        onTap: () {
          onTapNoteSection();
        },
        child: Container(
            decoration: AppDecoration.outlineBlack9002
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  Container(
                      width: 343.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 14.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12),
                      child: Container(
                          width: 283.h,
                          margin: EdgeInsets.only(right: 20.h),
                          child: Text("msg_ex_cleaning_priority".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.titleSmallRobotoBlack900)))
                ])));
  }

  /// Section Widget
  Widget _buildPriceSection() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 23.h),
            child: Row(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_total".tr,
                        style: CustomTextStyles.titleSmallff6f767d),
                    TextSpan(text: "  ".tr),
                    TextSpan(
                        text: "lbl_aed_128".tr,
                        style: CustomTextStyles.titleSmallff1a1d1f)
                  ]),
                  textAlign: TextAlign.left),
              Spacer(),
              Text("lbl_view_details".tr,
                  style: CustomTextStyles.titleSmallOrangeA200),
              CustomImageView(
                  imagePath: ImageConstant.imgVector3,
                  height: 3.v,
                  width: 6.h,
                  margin: EdgeInsets.only(left: 7.h, top: 4.v, bottom: 9.v))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBarSection() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildBedroomSection({
    required String numberOfBedrooms,
    required String userImage,
    required String zero,
    required String closeImage,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 15.v),
          child: Text(numberOfBedrooms,
              style: CustomTextStyles.titleMediumGray90001
                  .copyWith(color: appTheme.gray90001))),
      Spacer(),
      CustomImageView(
          imagePath: userImage, height: 36.adaptSize, width: 36.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 17.h, top: 8.v, bottom: 5.v),
          child: Text(zero,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.blueGray80001))),
      CustomImageView(
          imagePath: closeImage,
          height: 36.adaptSize,
          width: 36.adaptSize,
          margin: EdgeInsets.only(left: 17.h))
    ]);
  }

  /// Common widget
  Widget _buildPropertySection({required String officeText}) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              CustomIconButton(
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  padding: EdgeInsets.all(18.h),
                  decoration: IconButtonStyleHelper.outlineBlueAFTL18,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconOutlineWhiteA700)),
              SizedBox(height: 13.v),
              Text(officeText,
                  style: CustomTextStyles.labelLargeOnPrimary
                      .copyWith(color: theme.colorScheme.onPrimary))
            ])));
  }

  /// Navigates to the serviceDetailsScreen when the action is triggered.
  onTapBtnUIIconCloseLight() {
    Get.toNamed(
      AppRoutes.serviceDetailsScreen,
    );
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapNoteSection() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }
}
