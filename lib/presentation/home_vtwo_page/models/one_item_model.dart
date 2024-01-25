import '../../../core/app_export.dart';

/// This class is used in the [one_item_widget] screen.
class OneItemModel {
  OneItemModel({
    this.discountImage,
    this.discountText,
    this.titleText,
    this.id,
  }) {
    discountImage = discountImage ?? Rx(ImageConstant.imgImage214);
    discountText = discountText ?? Rx("10% OFF");
    titleText = titleText ?? Rx("Home Cleaning");
    id = id ?? Rx("");
  }

  Rx<String>? discountImage;

  Rx<String>? discountText;

  Rx<String>? titleText;

  Rx<String>? id;
}
