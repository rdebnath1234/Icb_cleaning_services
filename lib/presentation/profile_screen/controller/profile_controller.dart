import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/profile_screen/models/profile_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController genderInputController = TextEditingController();

  TextEditingController dateOfBirthInputController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('1').obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    emailInputController.dispose();
    genderInputController.dispose();
    dateOfBirthInputController.dispose();
  }
}
