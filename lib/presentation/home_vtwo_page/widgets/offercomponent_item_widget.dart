import '../controller/home_vtwo_controller.dart';
import '../models/offercomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class OffercomponentItemWidget extends StatelessWidget {
  OffercomponentItemWidget(
    this.offercomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OffercomponentItemModel offercomponentItemModelObj;

  var controller = Get.find<HomeVtwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.fillGreen.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "msg_offer_cleaning_service".tr,
                          style: CustomTextStyles.labelLargeBluegray90001,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUiIconInfoFilled,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_get_25".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(height: 6.v),
                  CustomElevatedButton(
                    height: 30.v,
                    width: 106.h,
                    text: "lbl_grab_offer".tr,
                    buttonStyle: CustomButtonStyles.fillWhiteA,
                    buttonTextStyle: CustomTextStyles.titleSmallBluegray50001,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.h),
            padding: EdgeInsets.symmetric(vertical: 19.v),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL14,
            ),
            child: Container(
              margin: EdgeInsets.only(left: 12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.customBorderTL14,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_offer".tr,
                    style: CustomTextStyles.labelLargeBluegray90001,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "lbl_get_15".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(height: 6.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgComponent1,
                    height: 30.v,
                    width: 10.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
