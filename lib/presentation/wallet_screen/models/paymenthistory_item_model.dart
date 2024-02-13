import '../../../core/app_export.dart';

/// This class is used in the [paymenthistory_item_widget] screen.
class PaymenthistoryItemModel {
  PaymenthistoryItemModel({
    this.orderImage,
    this.orderTitle,
    this.orderNumber,
    this.orderAmount,
    this.id,
  }) {
    orderImage = orderImage ?? Rx(ImageConstant.imgOval);
    orderTitle = orderTitle ?? Rx("ORDER 4123");
    orderNumber = orderNumber ?? Rx("#499322");
    orderAmount = orderAmount ?? Rx("AED 100");
    id = id ?? Rx("");
  }

  Rx<String>? orderImage;

  Rx<String>? orderTitle;

  Rx<String>? orderNumber;

  Rx<String>? orderAmount;

  Rx<String>? id;
}
