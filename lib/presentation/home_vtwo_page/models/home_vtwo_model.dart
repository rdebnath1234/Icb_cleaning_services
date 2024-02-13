import 'offercomponent_item_model.dart';
import '../../../core/app_export.dart';
import 'componentscategories_item_model.dart';
import 'one_item_model.dart';

/// This class defines the variables used in the [home_vtwo_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeVtwoModel {
  Rx<List<OffercomponentItemModel>> offercomponentItemList =
      Rx(List.generate(1, (index) => OffercomponentItemModel()));

  Rx<List<ComponentscategoriesItemModel>> componentscategoriesItemList = Rx([
    ComponentscategoriesItemModel(
        iconButton: ImageConstant.imgGroup26.obs, cleaning: "Cleaning".obs),
    ComponentscategoriesItemModel(
        iconButton: ImageConstant.imgMaximize.obs,
        cleaning: "Steam\nCleaning".obs),
    ComponentscategoriesItemModel(
        iconButton: ImageConstant.imgThumbsUpOnsecondarycontainer.obs,
        cleaning: "Installation".obs),
    ComponentscategoriesItemModel(
        iconButton: ImageConstant.imgUiIconArrowForwardLight.obs,
        cleaning: "See All".obs)
  ]);

  Rx<List<OneItemModel>> oneItemList = Rx([
    OneItemModel(
        discountImage: ImageConstant.imgImage214.obs,
        discountText: "10% OFF".obs,
        titleText: "Home Cleaning".obs),
    OneItemModel(titleText: "Carpet Cleaning".obs)
  ]);
}
