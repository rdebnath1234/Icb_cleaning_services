import 'controller/upcoming_empty_controller.dart';
import 'models/upcoming_empty_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_elevated_button.dart';

class UpcomingEmptyPage extends StatelessWidget {
  UpcomingEmptyPage({Key? key})
      : super(
          key: key,
        );

  UpcomingEmptyController controller =
      Get.put(UpcomingEmptyController(UpcomingEmptyModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 2.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 22.h,
                    vertical: 140.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpLightBlue80001,
                        height: 86.adaptSize,
                        width: 86.adaptSize,
                      ),
                      SizedBox(height: 35.v),
                      Text(
                        "msg_no_upcoming_order".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 12.v),
                      SizedBox(
                        width: 298.h,
                        child: Text(
                          "msg_currently_you_don_t".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallBluegray700Medium14
                              .copyWith(
                            height: 1.71,
                          ),
                        ),
                      ),
                      SizedBox(height: 28.v),
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
        ),
      ),
    );
  }
}
