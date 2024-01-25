import '../controller/bookings_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingsTabContainerScreen.
///
/// This class ensures that the BookingsTabContainerController is created when the
/// BookingsTabContainerScreen is first loaded.
class BookingsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingsTabContainerController());
  }
}
