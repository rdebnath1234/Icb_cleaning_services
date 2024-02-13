import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/bookings_tab_container_screen/models/bookings_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BookingsTabContainerScreen.
///
/// This class manages the state of the BookingsTabContainerScreen, including the
/// current bookingsTabContainerModelObj
class BookingsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<BookingsTabContainerModel> bookingsTabContainerModelObj =
      BookingsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
