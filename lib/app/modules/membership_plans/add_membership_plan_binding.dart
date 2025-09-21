import 'package:get/get.dart';
import 'package:myapp/app/modules/membership_plans/add_membership_plan_controller.dart';

class AddMembershipPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddMembershipPlanController>(() => AddMembershipPlanController());
  }
}
