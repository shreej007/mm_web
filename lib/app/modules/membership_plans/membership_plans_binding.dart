import 'package:get/get.dart';
import 'package:myapp/app/modules/membership_plans/membership_plans_controller.dart';

class MembershipPlansBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MembershipPlansController>(() => MembershipPlansController());
  }
}
