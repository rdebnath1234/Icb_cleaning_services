import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [bookings_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingsModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        userImage: ImageConstant.imgUserDeepOrange200.obs,
        generalCleaningText: "General cleaning".obs,
        referenceCodeText: "Reference Code: #D-571224".obs,
        statusText: "Status".obs,
        iconOutline: ImageConstant.imgIconOutlineGray6000140x40.obs,
        scheduleText: "8:00-9:00 AM,  09 Dec".obs,
        scheduleText1: "Schedule".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgUserDeepOrange200.obs,
        generalCleaningText: "General cleaning".obs,
        referenceCodeText: "Reference Code: #D-571224".obs,
        statusText: "Status".obs,
        iconOutline: ImageConstant.imgIconOutlineGray6000140x40.obs,
        scheduleText: "8:00-9:00 AM,  09 Dec".obs,
        scheduleText1: "Schedule".obs)
  ]);
}
