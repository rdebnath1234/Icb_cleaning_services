import '../controller/date_time_bottom_sheet_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DateTimeBottomSheetScreen.
///
/// This class ensures that the DateTimeBottomSheetController is created when the
/// DateTimeBottomSheetScreen is first loaded.
class DateTimeBottomSheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DateTimeBottomSheetController());
  }
}
