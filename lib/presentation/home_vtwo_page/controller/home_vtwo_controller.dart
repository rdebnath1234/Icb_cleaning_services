import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/home_vtwo_page/models/home_vtwo_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeVtwoPage.
///
/// This class manages the state of the HomeVtwoPage, including the
/// current homeVtwoModelObj
class HomeVtwoController extends GetxController {
  HomeVtwoController(this.homeVtwoModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeVtwoModel> homeVtwoModelObj;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
