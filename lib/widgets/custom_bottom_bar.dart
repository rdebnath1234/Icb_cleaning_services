import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgUiIconBoldLight,
      activeIcon: ImageConstant.imgUiIconBoldLight,
      type: BottomBarEnum.Uiiconboldlight,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUiIconItalicsFilled,
      activeIcon: ImageConstant.imgUiIconItalicsFilled,
      type: BottomBarEnum.Uiiconitalicsfilled,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUiIconUnderlineFilled,
      activeIcon: ImageConstant.imgUiIconUnderlineFilled,
      type: BottomBarEnum.Uiiconunderlinefilled,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettings,
      activeIcon: ImageConstant.imgSettings,
      type: BottomBarEnum.Settings,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgArrowUp,
      activeIcon: ImageConstant.imgArrowUp,
      type: BottomBarEnum.Arrowup,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.v,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12.h),
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 20.adaptSize,
                width: 20.adaptSize,
                color: appTheme.gray800,
              ),
              activeIcon: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 20.adaptSize,
                width: 20.adaptSize,
                color: appTheme.gray800,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Uiiconboldlight,
  Uiiconitalicsfilled,
  Uiiconunderlinefilled,
  Settings,
  Arrowup,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
