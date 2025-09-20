import 'package:get/get.dart';
import 'package:myapp/app/modules/membership/membership_controller.dart';

class MembershipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MembershipController>(() => MembershipController());
  }
}
