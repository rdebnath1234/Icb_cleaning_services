import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/notification_empty_screen/models/notification_empty_model.dart';

/// A controller class for the NotificationEmptyScreen.
///
/// This class manages the state of the NotificationEmptyScreen, including the
/// current notificationEmptyModelObj
class NotificationEmptyController extends GetxController {
  Rx<NotificationEmptyModel> notificationEmptyModelObj =
      NotificationEmptyModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in notificationEmptyModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notificationEmptyModelObj.value.dropdownItemList.refresh();
  }
}
