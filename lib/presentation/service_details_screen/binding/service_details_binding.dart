import '../controller/service_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ServiceDetailsScreen.
///
/// This class ensures that the ServiceDetailsController is created when the
/// ServiceDetailsScreen is first loaded.
class ServiceDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceDetailsController());
  }
}
