import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/service_details_screen/models/service_details_model.dart';

/// A controller class for the ServiceDetailsScreen.
///
/// This class manages the state of the ServiceDetailsScreen, including the
/// current serviceDetailsModelObj
class ServiceDetailsController extends GetxController {
  Rx<ServiceDetailsModel> serviceDetailsModelObj = ServiceDetailsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in serviceDetailsModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    serviceDetailsModelObj.value.dropdownItemList.refresh();
  }
}
