
import 'package:get/get.dart';
import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/routes/app_pages.dart';

class UserDetailsController extends GetxController {
  late UserModel user;

  @override
  void onInit() {
    super.onInit();
    // Safely receive the user argument
    if (Get.arguments is UserModel) {
      user = Get.arguments;
    } else {
      // Handle error case, e.g., navigate back or show an error
      Get.back();
      Get.snackbar('Error', 'User data not found.');
    }
  }

  void goToEditUser() {
    Get.toNamed(Routes.addUser, arguments: user);
  }
}
