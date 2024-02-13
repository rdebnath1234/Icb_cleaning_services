import '../../../core/app_export.dart';
import 'allcategoriesgrid_item_model.dart';

/// This class defines the variables used in the [all_categories_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class AllCategoriesModel {
  Rx<List<AllcategoriesgridItemModel>> allcategoriesgridItemList = Rx([
    AllcategoriesgridItemModel(
        maximize: ImageConstant.imgMaximize.obs,
        steamCleaning: "Steam\nCleaning".obs),
    AllcategoriesgridItemModel(
        maximize: ImageConstant.imgPinterest.obs,
        steamCleaning: "AC Cleaning".obs),
    AllcategoriesgridItemModel(
        maximize: ImageConstant.imgThumbsUpOnsecondarycontainer.obs,
        steamCleaning: "Installation".obs),
    AllcategoriesgridItemModel(
        maximize: ImageConstant.imgMaximize.obs,
        steamCleaning: "Steam\nCleaning".obs),
    AllcategoriesgridItemModel(
        maximize: ImageConstant.imgPinterest.obs,
        steamCleaning: "AC Cleaning".obs),
    AllcategoriesgridItemModel(
        maximize: ImageConstant.imgThumbsUpOnsecondarycontainer.obs,
        steamCleaning: "Installation".obs),
    AllcategoriesgridItemModel(
        maximize: ImageConstant.imgMaximize.obs,
        steamCleaning: "Steam\nCleaning".obs),
    AllcategoriesgridItemModel(
        maximize: ImageConstant.imgPinterest.obs,
        steamCleaning: "AC Cleaning".obs),
    AllcategoriesgridItemModel(
        maximize: ImageConstant.imgThumbsUpOnsecondarycontainer.obs,
        steamCleaning: "Installation".obs)
  ]);
}
