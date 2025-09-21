import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/membership_plans/add_membership_plan_controller.dart';

class AddMembershipPlanScreen extends GetView<AddMembershipPlanController> {
  const AddMembershipPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.isEditing.value ? 'Edit Membership Plan' : 'Add Membership Plan')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.priceController,
                decoration: const InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a price';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.durationController,
                decoration: const InputDecoration(labelText: 'Duration (in days)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a duration';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.saveMembershipPlan,
                child: Obx(() => Text(controller.isLoading.value ? 'Saving...' : 'Save')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
