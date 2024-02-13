import '../../../core/app_export.dart';

/// This class is used in the [allcategoriesgrid_item_widget] screen.
class AllcategoriesgridItemModel {
  AllcategoriesgridItemModel({
    this.maximize,
    this.steamCleaning,
    this.id,
  }) {
    maximize = maximize ?? Rx(ImageConstant.imgMaximize);
    steamCleaning = steamCleaning ?? Rx("Steam\nCleaning");
    id = id ?? Rx("");
  }

  Rx<String>? maximize;

  Rx<String>? steamCleaning;

  Rx<String>? id;
}
