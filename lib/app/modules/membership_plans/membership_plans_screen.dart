import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/membership_plans/membership_plans_controller.dart';

class MembershipPlansScreen extends GetView<MembershipPlansController> {
  const MembershipPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Membership Plans'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: controller.goToAddMembershipPlan,
            tooltip: 'Add Membership Plan',
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.errorMessage.value.isNotEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.errorMessage.value, style: const TextStyle(color: Colors.red)),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: controller.fetchMembershipPlans,
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        if (controller.membershipPlans.isEmpty) {
          return const Center(child: Text('No membership plans found.'));
        }

        return ListView.builder(
          itemCount: controller.membershipPlans.length,
          itemBuilder: (context, index) {
            final plan = controller.membershipPlans[index];
            return Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(plan.name),
                subtitle: Text('${plan.price} for ${plan.durationDays} days'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => controller.goToEditMembershipPlan(plan),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => controller.deleteMembershipPlan(plan.id),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
