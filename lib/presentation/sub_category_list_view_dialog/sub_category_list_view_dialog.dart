import '../sub_category_list_view_dialog/widgets/userprofile_item_widget.dart';
import 'controller/sub_category_list_view_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';

class SubCategoryListViewDialog extends StatelessWidget {
  SubCategoryListViewDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SubCategoryListViewController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 613.v,
        width: 344.h,
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildFrame(
                      cLEANING: "lbl_cleaning2".tr,
                    ),
                    SizedBox(height: 12.v),
                    _buildUserProfile(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildFrame3(),
                    SizedBox(height: 12.v),
                    _buildAED129(),
                    SizedBox(height: 10.v),
                    Divider(
                      color: theme.colorScheme.primary,
                    ),
                    SizedBox(height: 12.v),
                    _buildAED131(),
                    SizedBox(height: 10.v),
                    Divider(
                      color: theme.colorScheme.primary,
                    ),
                    SizedBox(height: 12.v),
                    _buildAED133(),
                    SizedBox(height: 10.v),
                    Divider(
                      color: theme.colorScheme.primary,
                    ),
                    SizedBox(height: 12.v),
                    _buildAED135(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0.v),
            child: SizedBox(
              width: 312.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: theme.colorScheme.primary,
              ),
            ),
          );
        },
        itemCount: controller
            .subCategoryListViewModelObj.value.userprofileItemList.value.length,
        itemBuilder: (context, index) {
          UserprofileItemModel model = controller.subCategoryListViewModelObj
              .value.userprofileItemList.value[index];
          return UserprofileItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 36.v,
          child: VerticalDivider(
            width: 3.h,
            thickness: 3.v,
            indent: 8.h,
            endIndent: 8.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            top: 7.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_cleaning2".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Spacer(),
        CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.outlineBlack,
          child: CustomImageView(
            imagePath: ImageConstant.imgMegaphoneLightBlue80001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgUiIconGridLight,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAED128() {
    return CustomElevatedButton(
      height: 24.v,
      width: 59.h,
      text: "lbl_aed_128".tr,
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.labelLargeGray900,
    );
  }

  /// Section Widget
  Widget _buildAED129() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 116.v,
          width: 105.h,
          decoration: AppDecoration.fillGray40001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgZkj4rewrlfopwm,
            height: 116.v,
            width: 105.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 190.h,
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUiIconStarFilled,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 2.v,
                        bottom: 2.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_4_8".tr,
                              style: CustomTextStyles.labelLargeff1a1d1f,
                            ),
                            TextSpan(
                              text: "lbl_87".tr,
                              style: CustomTextStyles.labelLargeff6f767d,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                "msg_regular_cleaning".tr,
                style: CustomTextStyles.titleSmall14,
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_starts_from".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 10.v),
              _buildAED128(),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAED130() {
    return CustomElevatedButton(
      height: 24.v,
      width: 59.h,
      text: "lbl_aed_128".tr,
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.labelLargeGray900,
    );
  }

  /// Section Widget
  Widget _buildAED131() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: appTheme.teal50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Container(
            height: 116.v,
            width: 105.h,
            decoration: AppDecoration.fillTeal50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage182,
                  height: 116.v,
                  width: 105.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgI7bamn9bmxmfncu,
                  height: 116.v,
                  width: 105.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFrame1(
                fourThousandFiveHundredEightyS: "lbl_4_5_87".tr,
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_deep_cleaning".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 11.v),
              Text(
                "lbl_starts_from".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 10.v),
              _buildAED130(),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAED132() {
    return CustomElevatedButton(
      height: 24.v,
      width: 59.h,
      text: "lbl_aed_128".tr,
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.labelLargeGray900,
    );
  }

  /// Section Widget
  Widget _buildAED133() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 116.v,
          width: 105.h,
          decoration: AppDecoration.fillTeal50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgPczc7j3ftfuputc,
            height: 116.v,
            width: 105.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFrame1(
                fourThousandFiveHundredEightyS: "lbl_4_5_87".tr,
              ),
              SizedBox(height: 7.v),
              Text(
                "msg_furniture_cleaning".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 11.v),
              Text(
                "lbl_starts_from".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 10.v),
              _buildAED132(),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAED134() {
    return CustomElevatedButton(
      height: 24.v,
      width: 59.h,
      text: "lbl_aed_128".tr,
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.labelLargeGray900,
    );
  }

  /// Section Widget
  Widget _buildAED135() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 116.v,
          width: 105.h,
          decoration: AppDecoration.fillTeal50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgYsttjxvShr5gqj,
            height: 116.v,
            width: 105.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFrame1(
                fourThousandFiveHundredEightyS: "lbl_4_5_87".tr,
              ),
              SizedBox(height: 7.v),
              Text(
                "msg_steam_deep_cleaning".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 11.v),
              Text(
                "lbl_starts_from".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 10.v),
              _buildAED134(),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame({required String cLEANING}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 36.v,
          child: VerticalDivider(
            width: 3.h,
            thickness: 3.v,
            indent: 8.h,
            endIndent: 8.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            top: 7.v,
            bottom: 6.v,
          ),
          child: Text(
            cLEANING,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
        Spacer(),
        CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.outlineBlack,
          child: CustomImageView(
            imagePath: ImageConstant.imgMegaphoneLightBlue80001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgUiIconGridLight,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1({required String fourThousandFiveHundredEightyS}) {
    return SizedBox(
      width: 191.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUiIconStarFilled,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_4_5".tr,
                    style: CustomTextStyles.labelLargeff1a1d1f,
                  ),
                  TextSpan(
                    text: "lbl_87".tr,
                    style: CustomTextStyles.labelLargeff6f767d,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgTelevision,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ],
      ),
    );
  }
}
