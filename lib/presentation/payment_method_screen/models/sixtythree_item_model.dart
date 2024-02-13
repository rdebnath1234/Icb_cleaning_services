import '../../../core/app_export.dart';

/// This class is used in the [sixtythree_item_widget] screen.
class SixtythreeItemModel {
  SixtythreeItemModel({
    this.cardIcon,
    this.cardNumber,
    this.cardType,
    this.id,
  }) {
    cardIcon = cardIcon ?? Rx(ImageConstant.imgMCardIcon);
    cardNumber = cardNumber ?? Rx("**** **** **** 7332");
    cardType = cardType ?? Rx("Master Card");
    id = id ?? Rx("");
  }

  Rx<String>? cardIcon;

  Rx<String>? cardNumber;

  Rx<String>? cardType;

  Rx<String>? id;
}
