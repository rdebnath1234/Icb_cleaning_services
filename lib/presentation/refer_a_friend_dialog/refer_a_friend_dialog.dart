import 'controller/refer_a_friend_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';

class ReferAFriendDialog extends StatelessWidget {
  ReferAFriendDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ReferAFriendController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 50.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 216.v,
            width: 279.h,
          ),
          SizedBox(height: 18.v),
          Container(
            width: 233.h,
            margin: EdgeInsets.only(
              left: 24.h,
              right: 21.h,
            ),
            child: Text(
              "msg_refer_a_friend".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineLarge!.copyWith(
                height: 1.28,
              ),
            ),
          ),
          SizedBox(height: 50.v),
          CustomElevatedButton(
            width: 166.h,
            text: "lbl_refer_a_friend2".tr,
            buttonStyle: CustomButtonStyles.fillLightBlue,
          ),
        ],
      ),
    );
  }
}
