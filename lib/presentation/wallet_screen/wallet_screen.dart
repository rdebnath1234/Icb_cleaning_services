import '../wallet_screen/widgets/paymenthistory_item_widget.dart';
import 'controller/wallet_controller.dart';
import 'models/paymenthistory_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:riya_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class WalletScreen extends GetWidget<WalletController> {
  const WalletScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildWalletFood(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 16.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_payment_history".tr,
                      style: CustomTextStyles.bodyLargeABeeZeeBlack900,
                    ),
                    SizedBox(height: 22.v),
                    _buildPaymentHistory(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWalletFood() {
    return SizedBox(
      height: 299.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.outlineBlack900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 71.v,
                    leadingWidth: 52.h,
                    leading: AppbarLeadingImage(
                      imagePath:
                          ImageConstant.imgUiIconArrowBackwardFilledGray300,
                      margin: EdgeInsets.only(
                        left: 28.h,
                        top: 23.v,
                        bottom: 23.v,
                      ),
                    ),
                    title: AppbarTitle(
                      text: "lbl_wallet".tr,
                      margin: EdgeInsets.only(left: 24.h),
                    ),
                    styleType: Style.bgFill_1,
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "lbl_aed_100".tr.toUpperCase(),
                    style: CustomTextStyles.displayMediumABeeZeeWhiteA700,
                  ),
                  SizedBox(height: 22.v),
                  CustomElevatedButton(
                    text: "lbl_add_funds".tr,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    buttonStyle: CustomButtonStyles.fillWhiteATL12,
                    buttonTextStyle: CustomTextStyles.titleSmallLightblue800,
                  ),
                  SizedBox(height: 79.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          "lbl_payment_method".tr,
                          style: CustomTextStyles.bodyLargeABeeZeeBlack900,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRightDeepPurple800,
                        height: 10.v,
                        width: 5.h,
                        margin: EdgeInsets.only(
                          top: 8.v,
                          right: 3.h,
                          bottom: 6.v,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: appTheme.gray300A9,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentHistory() {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 7.0.v),
              child: SizedBox(
                width: 315.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray10001,
                ),
              ),
            );
          },
          itemCount: controller
              .walletModelObj.value.paymenthistoryItemList.value.length,
          itemBuilder: (context, index) {
            PaymenthistoryItemModel model = controller
                .walletModelObj.value.paymenthistoryItemList.value[index];
            return PaymenthistoryItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
