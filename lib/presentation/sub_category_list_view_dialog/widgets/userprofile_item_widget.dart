import '../controller/sub_category_list_view_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<SubCategoryListViewController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 116.v,
          width: 105.h,
          margin: EdgeInsets.only(bottom: 11.v),
          decoration: AppDecoration.fillGray40001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Obx(
            () => CustomImageView(
              imagePath: userprofileItemModelObj.userImage!.value,
              height: 116.v,
              width: 105.h,
              radius: BorderRadius.circular(
                8.h,
              ),
              alignment: Alignment.center,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            right: 1.h,
            bottom: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 190.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 67.h,
                      margin: EdgeInsets.symmetric(vertical: 2.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUiIconStarFilled,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          RichText(
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
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              Obx(
                () => Text(
                  userprofileItemModelObj.serviceText!.value,
                  style: CustomTextStyles.titleSmall14,
                ),
              ),
              SizedBox(height: 7.v),
              Obx(
                () => Text(
                  userprofileItemModelObj.startsFromText!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 10.v),
              Container(
                margin: EdgeInsets.only(right: 131.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 6.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.fillTeal.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Obx(
                  () => Text(
                    userprofileItemModelObj.priceText!.value,
                    style: CustomTextStyles.labelLargeGray900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
