import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/reviews_screen/models/reviews_model.dart';

/// A controller class for the ReviewsScreen.
///
/// This class manages the state of the ReviewsScreen, including the
/// current reviewsModelObj
class ReviewsController extends GetxController {
  Rx<ReviewsModel> reviewsModelObj = ReviewsModel().obs;
}
