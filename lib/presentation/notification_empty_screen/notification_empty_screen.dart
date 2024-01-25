import 'controller/notification_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_bottom_bar.dart';
import 'package:riya_s_application6/widgets/custom_drop_down.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NotificationEmptyScreen extends GetWidget<NotificationEmptyController> {
  const NotificationEmptyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 19.v),
              _buildComponentsTitle(),
              SizedBox(height: 15.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 34.h,
                  vertical: 159.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 91.v,
                      width: 76.h,
                    ),
                    SizedBox(height: 30.v),
                    Text(
                      "msg_no_notifications".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 13.v),
                    SizedBox(
                      width: 274.h,
                      child: Text(
                        "msg_you_dont_have_any".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallGray400.copyWith(
                          height: 1.71,
                        ),
                      ),
                    ),
                    SizedBox(height: 37.v),
                    CustomElevatedButton(
                      width: 166.h,
                      text: "msg_view_all_services".tr,
                      buttonStyle: CustomButtonStyles.fillLightBlue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentsTitle() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 32.v,
            child: VerticalDivider(
              width: 4.h,
              thickness: 4.v,
              indent: 6.h,
              endIndent: 6.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_notification".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(),
          CustomDropDown(
            width: 77.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(4.h, 9.v, 10.h, 9.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
            ),
            hintText: "lbl_recent".tr,
            items: controller
                .notificationEmptyModelObj.value.dropdownItemList!.value,
            onChanged: (value) {
              controller.onSelected(value);
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
