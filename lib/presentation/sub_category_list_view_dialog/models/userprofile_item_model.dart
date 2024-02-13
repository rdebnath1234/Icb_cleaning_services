import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.serviceText,
    this.startsFromText,
    this.priceText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgZkj4rewrlfopwm);
    serviceText = serviceText ?? Rx("REGULAR CLEANING");
    startsFromText = startsFromText ?? Rx("Starts From");
    priceText = priceText ?? Rx("AED 128");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? serviceText;

  Rx<String>? startsFromText;

  Rx<String>? priceText;

  Rx<String>? id;
}
