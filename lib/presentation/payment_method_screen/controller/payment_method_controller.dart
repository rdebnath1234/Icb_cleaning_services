import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/payment_method_screen/models/payment_method_model.dart';

/// A controller class for the PaymentMethodScreen.
///
/// This class manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj
class PaymentMethodController extends GetxController {
  Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;
}
