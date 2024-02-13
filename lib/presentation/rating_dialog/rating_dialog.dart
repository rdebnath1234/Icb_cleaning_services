import 'controller/rating_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';
import 'package:riya_s_application6/widgets/custom_outlined_button.dart';
import 'package:riya_s_application6/widgets/custom_rating_bar.dart';

class RatingDialog extends StatelessWidget {
  RatingDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  RatingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 351.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 75.h,
                right: 5.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArtboard11,
                    height: 104.v,
                    width: 161.h,
                    margin: EdgeInsets.only(top: 14.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 38.h,
                      bottom: 86.v,
                    ),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUiIconCloseLight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 34.v),
          Text(
            "msg_rate_luna_cruz_app".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 7.v),
          Container(
            width: 227.h,
            margin: EdgeInsets.symmetric(horizontal: 42.h),
            child: Text(
              "msg_your_feedback_will".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallBluegray700Medium14.copyWith(
                height: 1.71,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          CustomRatingBar(
            initialRating: 0,
            itemSize: 30,
          ),
          SizedBox(height: 32.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomOutlinedButton(
                width: 127.h,
                text: "lbl_no_thanks".tr,
              ),
              CustomElevatedButton(
                width: 173.h,
                text: "msg_rate_on_play_store".tr,
              ),
            ],
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }
}
