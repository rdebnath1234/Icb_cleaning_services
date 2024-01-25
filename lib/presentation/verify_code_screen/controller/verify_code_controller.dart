import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/verify_code_screen/models/verify_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerifyCodeScreen.
///
/// This class manages the state of the VerifyCodeScreen, including the
/// current verifyCodeModelObj
class VerifyCodeController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VerifyCodeModel> verifyCodeModelObj = VerifyCodeModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
