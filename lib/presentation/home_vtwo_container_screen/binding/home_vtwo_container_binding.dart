import '../controller/home_vtwo_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeVtwoContainerScreen.
///
/// This class ensures that the HomeVtwoContainerController is created when the
/// HomeVtwoContainerScreen is first loaded.
class HomeVtwoContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVtwoContainerController());
  }
}
