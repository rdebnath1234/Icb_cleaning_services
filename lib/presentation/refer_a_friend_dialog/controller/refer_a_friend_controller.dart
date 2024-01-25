import 'package:riya_s_application6/core/app_export.dart';
import 'package:riya_s_application6/presentation/refer_a_friend_dialog/models/refer_a_friend_model.dart';

/// A controller class for the ReferAFriendDialog.
///
/// This class manages the state of the ReferAFriendDialog, including the
/// current referAFriendModelObj
class ReferAFriendController extends GetxController {
  Rx<ReferAFriendModel> referAFriendModelObj = ReferAFriendModel().obs;
}
