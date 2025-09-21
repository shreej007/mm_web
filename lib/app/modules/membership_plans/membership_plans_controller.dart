import 'package:get/get.dart';
import 'package:myapp/app/data/api_service.dart';
import 'package:myapp/app/data/models/membership_plan_model.dart';
import 'package:myapp/app/routes/app_pages.dart';

class MembershipPlansController extends GetxController {
  final ApiService _apiService = ApiService();

  var isLoading = true.obs;
  var errorMessage = ''.obs;
  var membershipPlans = <MembershipPlanModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchMembershipPlans();
  }

  Future<void> fetchMembershipPlans() async {
    try {
      isLoading(true);
      errorMessage('');
      final response = await _apiService.get('membership-plans');
      if (response is List) {
        membershipPlans.value = response.map((json) => MembershipPlanModel.fromJson(json)).toList();
      } else {
        throw 'Invalid data format from server';
      }
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading(false);
    }
  }

  void goToAddMembershipPlan() async {
    final result = await Get.toNamed(Routes.addMembershipPlan);
    if (result == true) {
      fetchMembershipPlans();
    }
  }

  void goToEditMembershipPlan(MembershipPlanModel plan) async {
    final result = await Get.toNamed(Routes.addMembershipPlan, arguments: plan);
    if (result == true) {
      fetchMembershipPlans();
    }
  }

  Future<void> deleteMembershipPlan(String id) async {
    try {
      await _apiService.delete('membership-plans/$id');
      membershipPlans.removeWhere((plan) => plan.id == id);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
