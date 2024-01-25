import '../../../core/app_export.dart';
import 'paymenthistory_item_model.dart';

/// This class defines the variables used in the [wallet_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WalletModel {
  Rx<List<PaymenthistoryItemModel>> paymenthistoryItemList = Rx([
    PaymenthistoryItemModel(
        orderImage: ImageConstant.imgOval.obs,
        orderTitle: "ORDER 4123".obs,
        orderNumber: "#499322".obs,
        orderAmount: "AED 100".obs),
    PaymenthistoryItemModel(
        orderImage: ImageConstant.imgOval44x44.obs,
        orderTitle: "ORDER 4123".obs,
        orderNumber: "#84453".obs,
        orderAmount: "AED 100".obs)
  ]);
}
