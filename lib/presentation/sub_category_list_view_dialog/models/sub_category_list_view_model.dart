import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [sub_category_list_view_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class SubCategoryListViewModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgZkj4rewrlfopwm.obs,
        serviceText: "REGULAR CLEANING".obs,
        startsFromText: "Starts From".obs,
        priceText: "AED 128".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgPczc7j3ftfuputc.obs,
        serviceText: "FURNITURE CLEANING".obs,
        startsFromText: "Starts From".obs,
        priceText: "AED 128".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgYsttjxvShr5gqj.obs,
        serviceText: "STEAM DEEP CLEANING".obs,
        startsFromText: "Starts From".obs,
        priceText: "AED 128".obs),
    UserprofileItemModel(
        serviceText: "DEEP CLEANING".obs,
        startsFromText: "Starts From".obs,
        priceText: "AED 128".obs)
  ]);
}
