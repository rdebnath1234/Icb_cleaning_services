import '../controller/all_categories_controller.dart';
import '../models/allcategoriesgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AllcategoriesgridItemWidget extends StatelessWidget {
  AllcategoriesgridItemWidget(
    this.allcategoriesgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AllcategoriesgridItemModel allcategoriesgridItemModelObj;

  var controller = Get.find<AllCategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomIconButton(
            height: 72.adaptSize,
            width: 72.adaptSize,
            padding: EdgeInsets.all(21.h),
            decoration: IconButtonStyleHelper.fillDeepPurpleTL36,
            child: CustomImageView(
              imagePath: allcategoriesgridItemModelObj.maximize!.value,
            ),
          ),
        ),
        SizedBox(height: 17.v),
        SizedBox(
          width: 65.h,
          child: Obx(
            () => Text(
              allcategoriesgridItemModelObj.steamCleaning!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumBluegray800.copyWith(
                height: 1.38,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
