import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/membership/membership_controller.dart';

class MembershipScreen extends GetView<MembershipController> {
  const MembershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: controller.startAdd,
        tooltip: 'Add Plan',
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Membership Management',
                style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Obx(
                  () => Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Text('Plan Name')),
                          DataColumn(label: Text('Price (INR)')),
                          DataColumn(label: Text('Duration (Days)')),
                          DataColumn(label: Text('Actions')),
                        ],
                        rows: controller.plans.map((plan) {
                          return DataRow(
                            cells: [
                              DataCell(Text(plan.name)),
                              DataCell(Text(plan.price.toStringAsFixed(2))),
                              DataCell(Text(plan.durationInDays.toString())),
                              DataCell(
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.edit),
                                      onPressed: () => controller.startEdit(plan),
                                      tooltip: 'Edit Plan',
                                      color: theme.primaryColor,
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete),
                                      onPressed: () => _showDeleteConfirmation(context, plan),
                                      tooltip: 'Delete Plan',
                                      color: theme.colorScheme.error,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, plan) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Plan'),
          content: Text('Are you sure you want to delete the ${plan.name} plan?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Get.back(),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.error,
              ),
              child: const Text('Delete'),
              onPressed: () {
                controller.deletePlan(plan.id);
                Get.back();
                Get.snackbar(
                  'Success',
                  'Membership plan deleted successfully',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
