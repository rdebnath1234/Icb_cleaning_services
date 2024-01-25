import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/upcoming_empty_page/models/upcoming_empty_model.dart';

/// A controller class for the UpcomingEmptyPage.
///
/// This class manages the state of the UpcomingEmptyPage, including the
/// current upcomingEmptyModelObj
class UpcomingEmptyController extends GetxController {
  UpcomingEmptyController(this.upcomingEmptyModelObj);

  Rx<UpcomingEmptyModel> upcomingEmptyModelObj;
}
