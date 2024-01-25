import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/address_one_screen/models/address_one_model.dart';

/// A controller class for the AddressOneScreen.
///
/// This class manages the state of the AddressOneScreen, including the
/// current addressOneModelObj
class AddressOneController extends GetxController {
  Rx<AddressOneModel> addressOneModelObj = AddressOneModel().obs;
}
