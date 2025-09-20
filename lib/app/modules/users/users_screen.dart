import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/users/users_controller.dart';

class UsersScreen extends GetView<UsersController> {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isWeb = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: controller.goToAddUser,
        tooltip: 'Add User',
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'User Management',
              style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            _buildFilterSection(isWeb),
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
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Gender')),
                        DataColumn(label: Text('Birthdate')),
                        DataColumn(label: Text('Occupation')),
                        DataColumn(label: Text('Sub-Caste')),
                        DataColumn(label: Text('Email')),
                        DataColumn(label: Text('Mobile')),
                        DataColumn(label: Text('Actions')),
                      ],
                      rows: controller.filteredUsers.map((user) {
                        final fullName =
                            '${user.basicInfo.firstName} ${user.basicInfo.lastName}';
                        return DataRow(
                          cells: [
                            DataCell(Text(fullName)),
                            DataCell(Text(user.basicInfo.gender)),
                            DataCell(Text(user.basicInfo.birthdate)),
                            DataCell(Text(user.careerDetails.occupationType)),
                            DataCell(Text(user.basicInfo.subCaste)),
                            DataCell(Text(user.basicInfo.email)),
                            DataCell(Text(user.basicInfo.mobile)),
                            DataCell(
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.visibility),
                                    onPressed: () =>
                                        controller.goToUserDetails(user),
                                    tooltip: 'View Details',
                                    color: theme.colorScheme.secondary,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () =>
                                        controller.goToEditUser(user),
                                    tooltip: 'Edit User',
                                    color: theme.primaryColor,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () =>
                                        _showDeleteConfirmation(context, user),
                                    tooltip: 'Delete User',
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
    );
  }

  Widget _buildFilterSection(bool isWeb) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Filters', style: Get.textTheme.titleLarge),
            const SizedBox(height: 16),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                SizedBox(
                  width: isWeb ? 200 : double.infinity,
                  child: TextField(
                    controller: controller.searchController,
                    onChanged: controller.setSearchQuery,
                    decoration: const InputDecoration(
                      labelText: 'Search by Name or Email',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: isWeb ? 150 : double.infinity,
                  child: DropdownButtonFormField<String>(
                    initialValue: controller.genderFilter.value.isEmpty
                        ? null
                        : controller.genderFilter.value,
                    onChanged: controller.setGenderFilter,
                    decoration: const InputDecoration(
                      labelText: 'Gender',
                      border: OutlineInputBorder(),
                    ),
                    items: ['Male', 'Female'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Obx(
                  () => SizedBox(
                    width: isWeb ? 200 : double.infinity,
                    child: DropdownButtonFormField<String>(
                      initialValue: controller.subCasteFilter.value.isEmpty
                          ? null
                          : controller.subCasteFilter.value,
                      onChanged: controller.setSubCasteFilter,
                      decoration: const InputDecoration(
                        labelText: 'Sub-Caste',
                        border: OutlineInputBorder(),
                      ),
                      items: controller.subCasteOptions
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Obx(
                  () => SizedBox(
                    width: isWeb ? 200 : double.infinity,
                    child: DropdownButtonFormField<String>(
                      initialValue: controller.occupationFilter.value.isEmpty
                          ? null
                          : controller.occupationFilter.value,
                      onChanged: controller.setOccupationFilter,
                      decoration: const InputDecoration(
                        labelText: 'Occupation',
                        border: OutlineInputBorder(),
                      ),
                      items: controller.occupationOptions
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: controller.clearFilters,
                icon: const Icon(Icons.clear_all),
                label: const Text('Clear Filters'),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, user) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete User'),
          content: Text(
              'Are you sure you want to delete ${user.basicInfo.firstName} ${user.basicInfo.lastName}?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Get.back();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.error,
              ),
              child: const Text('Delete'),
              onPressed: () {
                controller.deleteUser(user);
                Get.back(); // Close the dialog
                Get.snackbar(
                  'Success',
                  'User deleted successfully',
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
