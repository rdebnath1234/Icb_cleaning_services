import '../payment_method_screen/widgets/sixtythree_item_widget.dart';
import 'controller/payment_method_controller.dart';
import 'models/sixtythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_subtitle.dart';
import 'package:riya_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5003,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildEight(),
                      Divider(color: appTheme.gray300A9, indent: 1.h),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_credit_cards".tr,
                              style: CustomTextStyles
                                  .titleMediumAbhayaLibreMediumBlack900)),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 31.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 49.adaptSize,
                                width: 49.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                decoration: IconButtonStyleHelper.fillGrayTL24,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgVisaIcon)),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h, top: 7.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("msg_8447".tr,
                                          style: CustomTextStyles
                                              .titleMediumAbhayaLibreMediumBluegray90006),
                                      SizedBox(height: 3.v),
                                      Text("lbl_visa_carrd".tr,
                                          style: CustomTextStyles
                                              .titleSmallAbhayaLibreMediumBluegray200)
                                    ]))
                          ])),
                      SizedBox(height: 16.v),
                      _buildSixtyThree(),
                      SizedBox(height: 55.v),
                      CustomElevatedButton(
                          text: "lbl_pay_now".tr,
                          margin: EdgeInsets.only(left: 17.h, right: 15.h),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallWhiteA700Bold,
                          onPressed: () {
                            onTapPAYNOW();
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
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
            text: "lbl_payment_method".tr, margin: EdgeInsets.only(left: 24.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEight() {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
        decoration: AppDecoration.outlineBlack,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(top: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 6.v, bottom: 5.v),
                  child: Text("lbl_add_new_card".tr,
                      style: CustomTextStyles
                          .titleMediumAbhayaLibreMediumBlack900)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightDeepPurple800,
                  height: 10.v,
                  width: 5.h,
                  margin: EdgeInsets.only(top: 13.v, right: 3.h, bottom: 9.v))
            ]));
  }

  /// Section Widget
  Widget _buildSixtyThree() {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30.h),
            decoration: AppDecoration.outlineBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.v),
                      child: SizedBox(
                          width: 315.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.gray10001)));
                },
                itemCount: controller.paymentMethodModelObj.value
                    .sixtythreeItemList.value.length,
                itemBuilder: (context, index) {
                  SixtythreeItemModel model = controller.paymentMethodModelObj
                      .value.sixtythreeItemList.value[index];
                  return SixtythreeItemWidget(model);
                }))));
  }

  /// Navigates to the addressTwoScreen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.addressTwoScreen,
    );
  }

  /// Navigates to the bookingConfirmedScreen when the action is triggered.
  onTapPAYNOW() {
    Get.toNamed(
      AppRoutes.bookingConfirmedScreen,
    );
  }
}
