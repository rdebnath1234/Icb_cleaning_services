import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification Empty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "#21 Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "#20 Wallet".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.walletScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "verify code".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verifyCodeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home vTwo - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeVtwoContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Service Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.serviceDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Date & Time Bottom Sheet".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dateTimeBottomSheetScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "#21 Address Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addressTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "#22 Payment Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "booking confirmed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingConfirmedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bookings - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "#21 Address One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addressOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "#13 Reviews".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
