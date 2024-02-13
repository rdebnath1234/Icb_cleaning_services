import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/sub_category_list_view_dialog/models/sub_category_list_view_model.dart';

/// A controller class for the SubCategoryListViewDialog.
///
/// This class manages the state of the SubCategoryListViewDialog, including the
/// current subCategoryListViewModelObj
class SubCategoryListViewController extends GetxController {
  Rx<SubCategoryListViewModel> subCategoryListViewModelObj =
      SubCategoryListViewModel().obs;
}
