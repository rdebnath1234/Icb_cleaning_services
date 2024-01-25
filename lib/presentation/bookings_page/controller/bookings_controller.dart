import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/bookings_page/models/bookings_model.dart';

/// A controller class for the BookingsPage.
///
/// This class manages the state of the BookingsPage, including the
/// current bookingsModelObj
class BookingsController extends GetxController {
  BookingsController(this.bookingsModelObj);

  Rx<BookingsModel> bookingsModelObj;
}
