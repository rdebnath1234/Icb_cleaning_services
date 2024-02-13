import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/address_two_screen/models/address_two_model.dart';

/// A controller class for the AddressTwoScreen.
///
/// This class manages the state of the AddressTwoScreen, including the
/// current addressTwoModelObj
class AddressTwoController extends GetxController {
  Rx<AddressTwoModel> addressTwoModelObj = AddressTwoModel().obs;

  Rx<bool> setAddressDefault = false.obs;

  Rx<String> radioGroup = "".obs;
}
