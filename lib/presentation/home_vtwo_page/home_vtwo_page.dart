import '../home_vtwo_page/widgets/componentscategories_item_widget.dart';
import '../home_vtwo_page/widgets/offercomponent_item_widget.dart';
import '../home_vtwo_page/widgets/one_item_widget.dart';
import 'controller/home_vtwo_controller.dart';
import 'models/componentscategories_item_model.dart';
import 'models/home_vtwo_model.dart';
import 'models/offercomponent_item_model.dart';
import 'models/one_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_title_image.dart';
import 'package:riya_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:riya_s_application6/widgets/custom_outlined_button.dart';
import 'package:riya_s_application6/widgets/custom_search_view.dart';

class HomeVtwoPage extends StatelessWidget {
  HomeVtwoPage({Key? key})
      : super(
          key: key,
        );

  HomeVtwoController controller =
      Get.put(HomeVtwoController(HomeVtwoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 11.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Column(
                children: [
                  _buildComponentsIntro(),
                  SizedBox(height: 16.v),
                  _buildOfferComponent(),
                  SizedBox(height: 16.v),
                  _buildComponentsCategories(),
                  SizedBox(height: 16.v),
                  _buildComponentsCleaning(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 77.v,
      leadingWidth: 42.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconMenu32px,
        margin: EdgeInsets.only(
          left: 10.h,
          top: 22.v,
          bottom: 22.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Column(
          children: [
            AppbarSubtitleThree(
              text: "msg_current_location".tr.toUpperCase(),
              margin: EdgeInsets.only(right: 14.h),
            ),
            SizedBox(height: 1.v),
            Row(
              children: [
                AppbarSubtitleTwo(
                  text: "msg_15a_james_street".tr,
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgVector4,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildComponentsIntro() {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "msg_hello_debashis".tr.toUpperCase(),
            style: CustomTextStyles.titleSmallBluegray500,
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 312.h,
            child: Text(
              "msg_what_you_are_looking".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.headlineLargeBluegray900.copyWith(
                height: 1.28,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          CustomSearchView(
            controller: controller.searchController,
            hintText: "msg_search_what_you".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOfferComponent() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 190.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount: controller
            .homeVtwoModelObj.value.offercomponentItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          OffercomponentItemModel model = controller
              .homeVtwoModelObj.value.offercomponentItemList.value[index];
          return OffercomponentItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentsCategories() {
    return Container(
      height: 125.v,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 1.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 25.h,
            );
          },
          itemCount: controller
              .homeVtwoModelObj.value.componentscategoriesItemList.value.length,
          itemBuilder: (context, index) {
            ComponentscategoriesItemModel model = controller.homeVtwoModelObj
                .value.componentscategoriesItemList.value[index];
            return ComponentscategoriesItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne() {
    return SizedBox(
      height: 184.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller.homeVtwoModelObj.value.oneItemList.value.length,
          itemBuilder: (context, index) {
            OneItemModel model =
                controller.homeVtwoModelObj.value.oneItemList.value[index];
            return OneItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentsCleaning() {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 34.v,
                  child: VerticalDivider(
                    width: 4.h,
                    thickness: 4.v,
                    indent: 7.h,
                    endIndent: 7.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 8.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "msg_cleaning_services".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                CustomOutlinedButton(
                  height: 35.v,
                  width: 83.h,
                  text: "lbl_see_all".tr,
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 4.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowright,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL17,
                  buttonTextStyle: CustomTextStyles.labelLargeGray60001SemiBold,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          _buildOne(),
        ],
      ),
    );
  }
}
