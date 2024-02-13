import 'controller/side_menu_vtwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_text_form_field.dart';
import 'package:riya_s_application6/presentation/refer_a_friend_dialog/refer_a_friend_dialog.dart';
import 'package:riya_s_application6/presentation/refer_a_friend_dialog/controller/refer_a_friend_controller.dart';

// ignore_for_file: must_be_immutable
class SideMenuVtwoDraweritem extends StatelessWidget {
  SideMenuVtwoDraweritem(this.controller, {Key? key}) : super(key: key);

  SideMenuVtwoController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: 303.h,
            padding: EdgeInsets.all(24.h),
            decoration: AppDecoration.fillLightBlue,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              GestureDetector(
                  onTap: () {
                    onTapUserMenu();
                  },
                  child: Container(
                      padding: EdgeInsets.all(12.h),
                      decoration: AppDecoration.outlineBlack9001.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImg1882148x48,
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            radius: BorderRadius.circular(24.h)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, top: 5.v, bottom: 3.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_debashish_debnath".tr,
                                      style:
                                          CustomTextStyles.titleSmallWhiteA700),
                                  SizedBox(height: 5.v),
                                  Text("msg_xyz123_gmail_com".tr,
                                      style: CustomTextStyles
                                          .labelLargeBluegray100)
                                ]))
                      ]))),
              SizedBox(height: 30.v),
              CustomTextFormField(
                  controller: controller.calendarvalueController,
                  hintText: "lbl_calendar".tr,
                  hintStyle: CustomTextStyles.titleSmallDeeppurpleA200,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                      margin: EdgeInsets.all(12.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgThumbsupDeepPurpleA200,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 48.v),
                  contentPadding:
                      EdgeInsets.only(top: 14.v, right: 30.h, bottom: 14.v),
                  borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                  fillColor: appTheme.whiteA700),
              SizedBox(height: 20.v),
              GestureDetector(
                  onTap: () {
                    onTapLeft();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIcon24pxStroke,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, top: 3.v),
                            child: Text("lbl_bookings".tr,
                                style: CustomTextStyles.titleSmallWhiteA700))
                      ]))),
              SizedBox(height: 32.v),
              GestureDetector(
                  onTap: () {
                    onTapLeft1();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconOutline,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, top: 2.v, bottom: 2.v),
                            child: Text("lbl_address".tr,
                                style: CustomTextStyles.titleSmallWhiteA700))
                      ]))),
              SizedBox(height: 32.v),
              GestureDetector(
                  onTap: () {
                    onTapLeft2();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconOutlineBlueGray100,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, bottom: 3.v),
                            child: Text("lbl_notification".tr,
                                style: CustomTextStyles.titleSmallWhiteA700))
                      ]))),
              SizedBox(height: 32.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: _buildNavItem(
                      iconName: ImageConstant.imgUserBlueGray100,
                      text: "lbl_offers".tr)),
              SizedBox(height: 32.v),
              GestureDetector(
                  onTap: () {
                    onTapLeft3();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgIconOutlineBlueGray10024x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, bottom: 3.v),
                            child: Text("lbl_refer_a_friend".tr,
                                style: CustomTextStyles.titleSmallWhiteA700))
                      ]))),
              SizedBox(height: 32.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIconOutline24x24,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h, top: 3.v),
                        child: Text("lbl_support".tr,
                            style: CustomTextStyles.titleSmallWhiteA700))
                  ])),
              SizedBox(height: 32.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: _buildNavItem(
                      iconName: ImageConstant.imgIcon24pxStroke,
                      text: "lbl_wallet".tr,
                      onTapNavItem: () {
                        onTapNavItem();
                      })),
              SizedBox(height: 32.v)
            ])));
  }

  /// Common widget
  Widget _buildNavItem({
    required String iconName,
    required String text,
    Function? onTapNavItem,
  }) {
    return GestureDetector(
        onTap: () {
          onTapNavItem!.call();
        },
        child: Row(children: [
          CustomImageView(
              imagePath: iconName, height: 24.adaptSize, width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 2.v, bottom: 2.v),
              child: Text(text,
                  style: CustomTextStyles.titleSmallWhiteA700
                      .copyWith(color: appTheme.whiteA700)))
        ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapUserMenu() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the bookingsTabContainerScreen when the action is triggered.
  onTapLeft() {
    Get.toNamed(
      AppRoutes.bookingsTabContainerScreen,
    );
  }

  /// Navigates to the addressScreen when the action is triggered.
  onTapLeft1() {
    Get.toNamed(
      AppRoutes.addressScreen,
    );
  }

  /// Navigates to the notificationEmptyScreen when the action is triggered.
  onTapLeft2() {
    Get.toNamed(
      AppRoutes.notificationEmptyScreen,
    );
  }

  /// Displays a dialog with the [ReferAFriendDialog] content.
  onTapLeft3() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: ReferAFriendDialog(
        Get.put(
          ReferAFriendController(),
        ),
      ),
    ));
  }

  /// Navigates to the walletScreen when the action is triggered.
  onTapNavItem() {
    Get.toNamed(
      AppRoutes.walletScreen,
    );
  }
}
