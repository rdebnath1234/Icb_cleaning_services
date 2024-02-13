import '../controller/address_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddressTwoScreen.
///
/// This class ensures that the AddressTwoController is created when the
/// AddressTwoScreen is first loaded.
class AddressTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddressTwoController());
  }
}
