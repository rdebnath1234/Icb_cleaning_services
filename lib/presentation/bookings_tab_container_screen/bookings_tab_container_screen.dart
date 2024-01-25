import 'controller/bookings_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/upcoming_empty_page/upcoming_empty_page.dart';
import 'package:riya_s_application6/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class BookingsTabContainerScreen
    extends GetWidget<BookingsTabContainerController> {
  const BookingsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 29.v,
                        child: VerticalDivider(
                          width: 4.h,
                          thickness: 4.v,
                          indent: 3.h,
                          endIndent: 6.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "lbl_bookings".tr,
                          style: CustomTextStyles.headlineSmallGray900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              _buildTabview(),
              Expanded(
                child: SizedBox(
                  height: 527.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      UpcomingEmptyPage(),
                      UpcomingEmptyPage(),
                      UpcomingEmptyPage(),
                    ],
                  ),
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
  Widget _buildTabview() {
    return Container(
      height: 72.v,
      width: 343.h,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.lightBlue80001,
        labelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray700,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        indicatorPadding: EdgeInsets.all(
          16.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.deepPurpleA200.withOpacity(0.1),
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_upcoming".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_history".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_draft".tr,
            ),
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
