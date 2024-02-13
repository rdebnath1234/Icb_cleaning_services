import '../controller/home_vtwo_controller.dart';
import '../models/one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class OneItemWidget extends StatelessWidget {
  OneItemWidget(
    this.oneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OneItemModel oneItemModelObj;

  var controller = Get.find<HomeVtwoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 139.h,
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.amber200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Container(
              height: 154.v,
              width: 139.h,
              decoration: AppDecoration.fillAmber.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder12,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: oneItemModelObj.discountImage!.value,
                      height: 154.v,
                      width: 139.h,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 65.h,
                      margin: EdgeInsets.only(
                        left: 7.h,
                        top: 9.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.outlinePurpleA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Obx(
                        () => Text(
                          oneItemModelObj.discountText!.value,
                          style: CustomTextStyles.labelLargeGray5002,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Obx(
            () => Text(
              oneItemModelObj.titleText!.value,
              style: CustomTextStyles.titleSmallBluegray90002,
            ),
          ),
        ],
      ),
    );
  }
}
