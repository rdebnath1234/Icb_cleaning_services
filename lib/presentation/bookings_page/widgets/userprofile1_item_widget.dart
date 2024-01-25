import '../controller/bookings_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<BookingsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 89.h),
            child: Row(
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: userprofile1ItemModelObj.userImage!.value,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 4.v,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            userprofile1ItemModelObj.generalCleaningText!.value,
                            style: CustomTextStyles.titleMediumBold,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Obx(
                          () => Text(
                            userprofile1ItemModelObj.referenceCodeText!.value,
                            style: CustomTextStyles.labelLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Obx(
                    () => Text(
                      userprofile1ItemModelObj.statusText!.value,
                      style: CustomTextStyles.titleSmallGray60001Medium,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  height: 24.v,
                  width: 87.h,
                  text: "lbl_confirmed".tr,
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.titleSmallGreen300,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            children: [
              Obx(
                () => CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlineGrayTL20,
                  child: CustomImageView(
                    imagePath: userprofile1ItemModelObj.iconOutline!.value,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofile1ItemModelObj.scheduleText!.value,
                        style: CustomTextStyles.titleSmall14,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        userprofile1ItemModelObj.scheduleText1!.value,
                        style: CustomTextStyles.labelLargeGray60001,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            height: 44.v,
            text: "lbl_contact_us_now".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconOutlineWhiteA70024x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            buttonTextStyle: CustomTextStyles.titleSmallGray50,
          ),
        ],
      ),
    );
  }
}
