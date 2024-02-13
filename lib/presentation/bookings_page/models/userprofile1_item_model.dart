import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.userImage,
    this.generalCleaningText,
    this.referenceCodeText,
    this.statusText,
    this.iconOutline,
    this.scheduleText,
    this.scheduleText1,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgUserDeepOrange200);
    generalCleaningText = generalCleaningText ?? Rx("General cleaning");
    referenceCodeText = referenceCodeText ?? Rx("Reference Code: #D-571224");
    statusText = statusText ?? Rx("Status");
    iconOutline = iconOutline ?? Rx(ImageConstant.imgIconOutlineGray6000140x40);
    scheduleText = scheduleText ?? Rx("8:00-9:00 AM,  09 Dec");
    scheduleText1 = scheduleText1 ?? Rx("Schedule");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? generalCleaningText;

  Rx<String>? referenceCodeText;

  Rx<String>? statusText;

  Rx<String>? iconOutline;

  Rx<String>? scheduleText;

  Rx<String>? scheduleText1;

  Rx<String>? id;
}
