import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/side_menu_vtwo_draweritem/models/side_menu_vtwo_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideMenuVtwoDraweritem.
///
/// This class manages the state of the SideMenuVtwoDraweritem, including the
/// current sideMenuVtwoModelObj
class SideMenuVtwoController extends GetxController {
  TextEditingController calendarvalueController = TextEditingController();

  Rx<SideMenuVtwoModel> sideMenuVtwoModelObj = SideMenuVtwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    calendarvalueController.dispose();
  }
}
