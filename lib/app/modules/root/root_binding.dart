import 'package:get/get.dart';
import '../dashboard/dashboard_controller.dart';
import '../membership/membership_controller.dart';
import 'root_controller.dart';
import '../settings/settings_controller.dart';
import '../users/users_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<UsersController>(() => UsersController());
    Get.lazyPut<SettingsController>(() => SettingsController());
    Get.lazyPut<MembershipController>(() => MembershipController());
  }
}
