import '../controller/verify_code_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyCodeScreen.
///
/// This class ensures that the VerifyCodeController is created when the
/// VerifyCodeScreen is first loaded.
class VerifyCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyCodeController());
  }
}
