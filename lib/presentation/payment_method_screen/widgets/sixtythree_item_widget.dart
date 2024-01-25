import '../controller/payment_method_controller.dart';
import '../models/sixtythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SixtythreeItemWidget extends StatelessWidget {
  SixtythreeItemWidget(
    this.sixtythreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SixtythreeItemModel sixtythreeItemModelObj;

  var controller = Get.find<PaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7.v),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Obx(
                () => CustomIconButton(
                  height: 49.adaptSize,
                  width: 49.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillGrayTL24,
                  child: CustomImageView(
                    imagePath: sixtythreeItemModelObj.cardIcon!.value,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 5.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      sixtythreeItemModelObj.cardNumber!.value,
                      style: CustomTextStyles
                          .titleMediumAbhayaLibreMediumBluegray90006,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Obx(
                    () => Text(
                      sixtythreeItemModelObj.cardType!.value,
                      style: CustomTextStyles
                          .titleSmallAbhayaLibreMediumBluegray200,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
