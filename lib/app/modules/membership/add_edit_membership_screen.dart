import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:myapp/app/data/models/membership_plan_model.dart';
import 'package:myapp/app/modules/membership/add_edit_membership_controller.dart';

class AddEditMembershipScreen extends GetView<AddEditMembershipController> {
  const AddEditMembershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Membership'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Obx(() {
                if (controller.plans.isEmpty) {
                  return const CircularProgressIndicator();
                }
                return DropdownButtonFormField<MembershipPlanModel>(
                  items: controller.plans.map((plan) {
                    return DropdownMenuItem<MembershipPlanModel>(
                      value: plan,
                      child: Text(plan.name),
                    );
                  }).toList(),
                  onChanged: (value) {
                    controller.onPlanSelected(value);
                  },
                  decoration: const InputDecoration(labelText: 'Membership Plan'),
                  validator: (value) => value == null ? 'Please select a plan' : null,
                );
              }),
              const SizedBox(height: 16),
              Obx(() => Text(controller.startDate.value == null
                  ? 'No date selected'
                  : DateFormat.yMd().format(controller.startDate.value!))),
              ElevatedButton(
                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                    if (date != null) {
                      controller.onStartDateSelected(date);
                    }
                  },
                  child: const Text('Select Start Date')),
              const SizedBox(height: 16),
              Obx(() => ElevatedButton(
                    onPressed: controller.isLoading.value ? null : controller.saveMembership,
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator()
                        : const Text('Save Membership'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
