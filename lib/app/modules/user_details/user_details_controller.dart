
import 'package:get/get.dart';
import 'package:myapp/app/data/models/user_model.dart';

class UserDetailsController extends GetxController with StateMixin<UserModel> {
  final user = Rx<UserModel?>(null);

  @override
  void onInit() {
    super.onInit();
    // Safely cast the argument to UserModel
    final dynamic userArgument = Get.arguments;
    if (userArgument is UserModel) {
      user.value = userArgument;
      // Pass the user data to the view and set status to success
      change(user.value, status: RxStatus.success());
    } else {
      // If no user is passed, set status to error
      change(null, status: RxStatus.error('User data not provided.'));
    }
  }
}
