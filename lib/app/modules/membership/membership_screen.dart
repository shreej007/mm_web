import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:myapp/app/modules/membership/membership_controller.dart';

class MembershipScreen extends GetView<MembershipController> {
  const MembershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membership for ${controller.user.value?.basicInfo?.firstName ?? ''}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Get.toNamed('/add-edit-membership', arguments: controller.user.value);
            },
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.memberships.isEmpty) {
          return const Center(child: Text('No memberships found for this user.'));
        }

        return ListView.builder(
          itemCount: controller.memberships.length,
          itemBuilder: (context, index) {
            final membership = controller.memberships[index];
            final now = DateTime.now();
            final isActive = now.isAfter(membership.startDate) && now.isBefore(membership.endDate);

            return Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(membership.planName),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Starts: ${DateFormat.yMd().format(membership.startDate)}'),
                    Text('Ends: ${DateFormat.yMd().format(membership.endDate)}'),
                  ],
                ),
                trailing: Chip(
                  label: Text(isActive ? 'Active' : 'Inactive'),
                  backgroundColor: isActive ? Colors.green : Colors.red,
                  labelStyle: const TextStyle(color: Colors.white),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  side: BorderSide.none,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
