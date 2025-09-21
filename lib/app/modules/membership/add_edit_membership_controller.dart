import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/api_service.dart';
import 'package:myapp/app/data/models/membership_plan_model.dart';
import 'package:myapp/app/data/models/user_model.dart';

class AddEditMembershipController extends GetxController {
  final ApiService _apiService = ApiService();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  UserModel? user;
  var isLoading = false.obs;
  var plans = <MembershipPlan>[].obs;
  var selectedPlan = Rx<MembershipPlan?>(null);
  var startDate = Rx<DateTime?>(null);

  @override
  void onInit() {
    super.onInit();
    user = Get.arguments as UserModel?;
    fetchMembershipPlans();
  }

  void fetchMembershipPlans() async {
    try {
      final response = await _apiService.get('membership-plans');
      if (response is List) {
        plans.value = response.map((json) => MembershipPlan.fromJson(json)).toList();
      }
    } catch (e) {
      Get.snackbar('Error', 'Could not fetch membership plans.');
    }
  }

  void onPlanSelected(MembershipPlan? plan) {
    selectedPlan.value = plan;
  }

  void onStartDateSelected(DateTime date) {
    startDate.value = date;
  }

  void saveMembership() async {
    if (formKey.currentState!.validate()) {
      if (user == null || selectedPlan.value == null || startDate.value == null) {
        Get.snackbar('Error', 'All fields are required.');
        return;
      }

      isLoading.value = true;

      final membershipData = {
        'user_id': user!.id,
        'plan_id': selectedPlan.value!.id,
        'start_date': startDate.value!.toIso8601String(),
      };

      try {
        await _apiService.post('memberships', body: membershipData);
        Get.back(result: true);
        Get.snackbar('Success', 'Membership added successfully.');
      } catch (e) {
        Get.snackbar('Error', 'Failed to add membership.');
      } finally {
        isLoading.value = false;
      }
    }
  }
}
