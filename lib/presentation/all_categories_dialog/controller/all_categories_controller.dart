import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/all_categories_dialog/models/all_categories_model.dart';

/// A controller class for the AllCategoriesDialog.
///
/// This class manages the state of the AllCategoriesDialog, including the
/// current allCategoriesModelObj
class AllCategoriesController extends GetxController {
  Rx<AllCategoriesModel> allCategoriesModelObj = AllCategoriesModel().obs;
}
