import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/date_time_bottom_sheet_screen/models/date_time_bottom_sheet_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DateTimeBottomSheetScreen.
///
/// This class manages the state of the DateTimeBottomSheetScreen, including the
/// current dateTimeBottomSheetModelObj
class DateTimeBottomSheetController extends GetxController {
  TextEditingController timeController = TextEditingController();

  Rx<DateTimeBottomSheetModel> dateTimeBottomSheetModelObj =
      DateTimeBottomSheetModel().obs;

  @override
  void onClose() {
    super.onClose();
    timeController.dispose();
  }
}
