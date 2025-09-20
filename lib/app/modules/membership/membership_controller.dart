import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/models/membership_plan_model.dart';
import 'package:uuid/uuid.dart';

class MembershipController extends GetxController {
  final plans = <MembershipPlan>[].obs;
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final durationController = TextEditingController();

  final Uuid _uuid = const Uuid();
  String? _editingId;

  @override
  void onInit() {
    super.onInit();
    // Initialize with some dummy data
    plans.addAll([
      MembershipPlan(id: _uuid.v4(), name: 'Free', price: 0, durationInDays: 365),
      MembershipPlan(id: _uuid.v4(), name: 'Premium', price: 2000, durationInDays: 90),
      MembershipPlan(id: _uuid.v4(), name: 'Premium+', price: 5000, durationInDays: 180),
    ]);
  }

  void startAdd() {
    _editingId = null;
    nameController.clear();
    priceController.clear();
    durationController.clear();
    Get.toNamed('/root/add_edit_membership');
  }

  void startEdit(MembershipPlan plan) {
    _editingId = plan.id;
    nameController.text = plan.name;
    priceController.text = plan.price.toString();
    durationController.text = plan.durationInDays.toString();
    Get.toNamed('/root/add_edit_membership');
  }

  void savePlan() {
    if (formKey.currentState!.validate()) {
      final name = nameController.text;
      final price = double.parse(priceController.text);
      final duration = int.parse(durationController.text);
      final isEditing = _editingId != null;

      if (!isEditing) {
        // Add new plan
        final newPlan = MembershipPlan(
          id: _uuid.v4(),
          name: name,
          price: price,
          durationInDays: duration,
        );
        plans.add(newPlan);
      } else {
        // Update existing plan
        final index = plans.indexWhere((p) => p.id == _editingId);
        if (index != -1) {
          final updatedPlan = MembershipPlan(
            id: _editingId!,
            name: name,
            price: price,
            durationInDays: duration,
          );
          plans[index] = updatedPlan;
        }
      }
      Get.back();
      Get.snackbar(
        'Success',
        isEditing ? 'Membership plan updated successfully' : 'Membership plan added successfully',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  void deletePlan(String id) {
    plans.removeWhere((p) => p.id == id);
  }
}
