import '../controller/wallet_controller.dart';
import '../models/paymenthistory_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class PaymenthistoryItemWidget extends StatelessWidget {
  PaymenthistoryItemWidget(
    this.paymenthistoryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymenthistoryItemModel paymenthistoryItemModelObj;

  var controller = Get.find<WalletController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: paymenthistoryItemModelObj.orderImage!.value,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 21.h,
            top: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  paymenthistoryItemModelObj.orderTitle!.value,
                  style: CustomTextStyles.bodyLargeABeeZeeBlack900,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  paymenthistoryItemModelObj.orderNumber!.value,
                  style: CustomTextStyles.bodyMediumABeeZeeBluegray40001,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 24.v),
          child: Obx(
            () => Text(
              paymenthistoryItemModelObj.orderAmount!.value,
              style: CustomTextStyles.bodyLargeABeeZeeBluegray90006,
            ),
          ),
        ),
      ],
    );
  }
}
