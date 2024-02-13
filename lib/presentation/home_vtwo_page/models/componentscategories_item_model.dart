import '../../../core/app_export.dart';

/// This class is used in the [componentscategories_item_widget] screen.
class ComponentscategoriesItemModel {
  ComponentscategoriesItemModel({
    this.iconButton,
    this.cleaning,
    this.id,
  }) {
    iconButton = iconButton ?? Rx(ImageConstant.imgGroup26);
    cleaning = cleaning ?? Rx("Cleaning");
    id = id ?? Rx("");
  }

  Rx<String>? iconButton;

  Rx<String>? cleaning;

  Rx<String>? id;
}
