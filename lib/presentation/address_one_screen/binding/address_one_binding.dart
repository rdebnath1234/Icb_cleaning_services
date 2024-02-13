import '../controller/address_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddressOneScreen.
///
/// This class ensures that the AddressOneController is created when the
/// AddressOneScreen is first loaded.
class AddressOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddressOneController());
  }
}
