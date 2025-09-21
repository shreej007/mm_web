import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/api_service.dart';
import 'package:myapp/app/data/models/membership_plan_model.dart';

class AddMembershipPlanController extends GetxController {
  final ApiService _apiService = ApiService();
  final formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController priceController;
  late TextEditingController durationController;

  var isLoading = false.obs;
  var isEditing = false.obs;
  MembershipPlanModel? _editingPlan;

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    priceController = TextEditingController();
    durationController = TextEditingController();

    if (Get.arguments is MembershipPlanModel) {
      isEditing.value = true;
      _editingPlan = Get.arguments;
      nameController.text = _editingPlan!.name;
      priceController.text = _editingPlan!.price.toString();
      durationController.text = _editingPlan!.durationDays.toString();
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    priceController.dispose();
    durationController.dispose();
    super.onClose();
  }

  Future<void> saveMembershipPlan() async {
    if (formKey.currentState!.validate()) {
      isLoading(true);
      try {
        final plan = MembershipPlanModel(
          id: _editingPlan?.id ?? '',
          name: nameController.text,
          price: double.parse(priceController.text),
          durationDays: int.parse(durationController.text),
          features: [], // You can add a way to manage features later
        );

        if (isEditing.value) {
          await _apiService.put('membership-plans/${_editingPlan!.id}', plan.toJson());
        } else {
          await _apiService.post('membership-plans', plan.toJson());
        }
        Get.back(result: true);
      } catch (e) {
        Get.snackbar('Error', e.toString());
      } finally {
        isLoading(false);
      }
    }
  }
}
