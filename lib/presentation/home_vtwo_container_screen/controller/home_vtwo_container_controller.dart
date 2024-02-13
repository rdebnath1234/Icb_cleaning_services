import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/home_vtwo_container_screen/models/home_vtwo_container_model.dart';

/// A controller class for the HomeVtwoContainerScreen.
///
/// This class manages the state of the HomeVtwoContainerScreen, including the
/// current homeVtwoContainerModelObj
class HomeVtwoContainerController extends GetxController {
  Rx<HomeVtwoContainerModel> homeVtwoContainerModelObj =
      HomeVtwoContainerModel().obs;
}
