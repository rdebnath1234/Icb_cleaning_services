import '../all_categories_dialog/widgets/allcategoriesgrid_item_widget.dart';
import 'controller/all_categories_controller.dart';
import 'models/allcategoriesgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';

class AllCategoriesDialog extends StatelessWidget {
  AllCategoriesDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  AllCategoriesController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                SizedBox(
                  height: 23.v,
                  child: VerticalDivider(
                    width: 4.h,
                    thickness: 4.v,
                    indent: 3.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_all_categories".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          _buildAllCategoriesGrid(),
          SizedBox(height: 43.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAllCategoriesGrid() {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 135.v,
            crossAxisCount: 1,
            mainAxisSpacing: 1.h,
            crossAxisSpacing: 1.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.allCategoriesModelObj.value
              .allcategoriesgridItemList.value.length,
          itemBuilder: (context, index) {
            AllcategoriesgridItemModel model = controller.allCategoriesModelObj
                .value.allcategoriesgridItemList.value[index];
            return AllcategoriesgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
