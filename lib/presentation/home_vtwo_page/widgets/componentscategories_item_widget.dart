import '../controller/home_vtwo_controller.dart';
import '../models/componentscategories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ComponentscategoriesItemWidget extends StatelessWidget {
  ComponentscategoriesItemWidget(
    this.componentscategoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ComponentscategoriesItemModel componentscategoriesItemModelObj;

  var controller = Get.find<HomeVtwoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58.h,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.v),
        child: Column(
          children: [
            Obx(
              () => CustomIconButton(
                height: 58.adaptSize,
                width: 58.adaptSize,
                padding: EdgeInsets.all(11.h),
                decoration: IconButtonStyleHelper.fillDeepOrange,
                child: CustomImageView(
                  imagePath: componentscategoriesItemModelObj.iconButton!.value,
                ),
              ),
            ),
            SizedBox(height: 14.v),
            Obx(
              () => Text(
                componentscategoriesItemModelObj.cleaning!.value,
                style: CustomTextStyles.labelLargeBluegray800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
