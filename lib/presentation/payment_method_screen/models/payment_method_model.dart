import '../../../core/app_export.dart';
import 'sixtythree_item_model.dart';

/// This class defines the variables used in the [payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMethodModel {
  Rx<List<SixtythreeItemModel>> sixtythreeItemList = Rx([
    SixtythreeItemModel(
        cardIcon: ImageConstant.imgMCardIcon.obs,
        cardNumber: "**** **** **** 7332".obs,
        cardType: "Master Card".obs),
    SixtythreeItemModel(
        cardIcon: ImageConstant.imgPaypalIcon.obs,
        cardNumber: "the.apps.experts@gmail.com".obs,
        cardType: "Paypal".obs)
  ]);
}
