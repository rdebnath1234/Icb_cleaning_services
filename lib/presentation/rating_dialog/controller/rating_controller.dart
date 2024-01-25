import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/rating_dialog/models/rating_model.dart';

/// A controller class for the RatingDialog.
///
/// This class manages the state of the RatingDialog, including the
/// current ratingModelObj
class RatingController extends GetxController {
  Rx<RatingModel> ratingModelObj = RatingModel().obs;
}
