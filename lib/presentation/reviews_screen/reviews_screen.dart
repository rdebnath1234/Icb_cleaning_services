import 'controller/reviews_controller.dart';
import 'package:flutter/material.dart';
import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_leading_image.dart';
import 'package:riya_s_application6/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:riya_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:riya_s_application6/widgets/custom_rating_bar.dart';

class ReviewsScreen extends GetWidget<ReviewsController> {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5003,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 5.v),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 23.v),
                      decoration: AppDecoration.outlineBlack,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildAppBar(),
                        SizedBox(height: 24.v),
                        _buildRatingBar(),
                        SizedBox(height: 23.v),
                        _buildReview1(),
                        SizedBox(height: 46.v),
                        _buildReview2(),
                        SizedBox(height: 63.v)
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 24.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgUiIconArrowBackwardFilled,
            margin: EdgeInsets.only(left: 28.h),
            onTap: () {
              onTapImage();
            }),
        title: AppbarSubtitleOne(
            text: "lbl_reviews".tr, margin: EdgeInsets.only(left: 24.h)));
  }

  /// Section Widget
  Widget _buildRatingBar() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 24.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("lbl_2_8".tr, style: theme.textTheme.displayLarge),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 26.v, bottom: 8.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRatingBar(initialRating: 0, itemSize: 10),
                        SizedBox(height: 4.v),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text("lbl_520".tr,
                                  style: theme.textTheme.bodySmall)),
                          CustomImageView(
                              imagePath: ImageConstant.imgIconsInline16px,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 3.h))
                        ])
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 26.h, top: 6.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Container(
                              height: 8.v,
                              width: 144.h,
                              margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.errorContainer,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(100.h)))),
                          Opacity(
                              opacity: 0.5,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("lbl_92".tr,
                                      style: theme.textTheme.labelMedium)))
                        ]),
                        Row(children: [
                          Container(
                              height: 8.v,
                              width: 116.h,
                              margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                              decoration: BoxDecoration(
                                  color: appTheme.indigo600,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(100.h)))),
                          Opacity(
                              opacity: 0.5,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_86".tr,
                                      style: theme.textTheme.labelMedium)))
                        ]),
                        Row(children: [
                          Container(
                              height: 8.v,
                              width: 89.h,
                              margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                              decoration: BoxDecoration(
                                  color: appTheme.orange400,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(100.h)))),
                          Opacity(
                              opacity: 0.5,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_61".tr,
                                      style: theme.textTheme.labelMedium)))
                        ]),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            width: 66.h,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      height: 8.v,
                                                      width: 44.h,
                                                      margin: EdgeInsets.only(
                                                          top: 2.v,
                                                          bottom: 1.v),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .deepOrange500,
                                                          borderRadius: BorderRadius
                                                              .horizontal(
                                                                  right: Radius
                                                                      .circular(
                                                                          100.h)))),
                                                  Opacity(
                                                      opacity: 0.5,
                                                      child: Text("lbl_12".tr,
                                                          style: theme.textTheme
                                                              .labelMedium))
                                                ]))),
                                    SizedBox(height: 2.v),
                                    Container(
                                        height: 8.v,
                                        width: 62.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.pinkA100,
                                            borderRadius:
                                                BorderRadius.horizontal(
                                                    right: Radius.circular(
                                                        100.h))))
                                  ]),
                              Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 3.h, top: 11.v),
                                      child: Text("lbl_18".tr,
                                          style: theme.textTheme.labelMedium)))
                            ])
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildReview1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgUserpic,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(top: 4.v, bottom: 61.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildKayTotleben(
                                userName: "msg_xenie_dole_elov".tr),
                            SizedBox(height: 2.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: CustomRatingBar(
                                    initialRating: 1, itemCount: 3)),
                            SizedBox(height: 7.v),
                            Container(
                                width: 273.h,
                                margin: EdgeInsets.only(right: 13.h),
                                child: Text("msg_it_is_a_professional".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium!
                                        .copyWith(height: 1.43)))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildReview2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgUserpic40x40,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(top: 4.v, bottom: 49.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildKayTotleben(userName: "lbl_kay_totleben".tr),
                            SizedBox(height: 6.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: CustomRatingBar(
                                    initialRating: 1, itemCount: 3)),
                            SizedBox(height: 5.v),
                            SizedBox(
                                width: 285.h,
                                child: Text("msg_he_did_a_really".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium!
                                        .copyWith(height: 1.43)))
                          ])))
            ]));
  }

  /// Common widget
  Widget _buildKayTotleben({required String userName}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 13.v),
              child: Text(userName,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: appTheme.black900.withOpacity(0.87)))),
          CustomImageView(
              imagePath: ImageConstant.imgIconsNavigation,
              height: 24.v,
              width: 12.h,
              margin: EdgeInsets.only(bottom: 6.v))
        ]);
  }

  /// Navigates to the serviceDetailsScreen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.serviceDetailsScreen,
    );
  }
}
