import '../bookings_page/widgets/userprofile1_item_widget.dart';
import 'controller/bookings_controller.dart';
import 'models/bookings_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';

class BookingsPage extends StatelessWidget {
  BookingsPage({Key? key})
      : super(
          key: key,
        );

  BookingsController controller =
      Get.put(BookingsController(BookingsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillSecondaryContainer,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              _buildUserProfile(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 0.5.v),
              child: SizedBox(
                width: 311.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: theme.colorScheme.primary,
                ),
              ),
            );
          },
          itemCount: controller
              .bookingsModelObj.value.userprofile1ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile1ItemModel model = controller
                .bookingsModelObj.value.userprofile1ItemList.value[index];
            return Userprofile1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
