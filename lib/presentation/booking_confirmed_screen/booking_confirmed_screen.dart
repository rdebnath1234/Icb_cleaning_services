import 'controller/booking_confirmed_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';

class BookingConfirmedScreen extends GetWidget<BookingConfirmedController> {
  const BookingConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.green500,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 33.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 6.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup34604,
                          height: 309.v,
                          width: 308.h),
                      SizedBox(height: 36.v),
                      Text("msg_your_booking_is".tr,
                          style: CustomTextStyles.headlineSmallRobotoWhiteA700),
                      SizedBox(height: 11.v),
                      Text("msg_thank_you_for_shopping".tr,
                          style: CustomTextStyles.bodyLargeRobotoWhiteA700),
                      SizedBox(height: 37.v),
                      CustomElevatedButton(
                          width: 143.h,
                          text: "lbl_view_booking".tr,
                          buttonStyle: CustomButtonStyles.fillWhiteATL8,
                          buttonTextStyle: CustomTextStyles.titleSmallGreen500,
                          onPressed: () {
                            onTapViewBooking();
                          })
                    ]))));
  }

  /// Navigates to the bookingsTabContainerScreen when the action is triggered.
  onTapViewBooking() {
    Get.toNamed(
      AppRoutes.bookingsTabContainerScreen,
    );
  }
}
