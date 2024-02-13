import 'controller/home_vtwo_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/home_vtwo_page/home_vtwo_page.dart';
import 'package:riya_s_application6/widgets/custom_bottom_bar.dart';

class HomeVtwoContainerScreen extends GetWidget<HomeVtwoContainerController> {
  const HomeVtwoContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeVtwoPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeVtwoPage:
        return HomeVtwoPage();
      default:
        return HomeVtwoPage();
    }
  }
}
