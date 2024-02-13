import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('971').obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
