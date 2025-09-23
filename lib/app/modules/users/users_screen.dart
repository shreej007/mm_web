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
            _buildFilterSection(context, isWeb),
            const SizedBox(height: 24),
            Expanded(
              child: Obx(() {
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
                        ElevatedButton(onPressed: controller.fetchUsers, child: const Text('Retry')),
                      ],
                    ),
                  );
                }
                if (controller.filteredUsers.isEmpty) {
                  return const Center(child: Text('No users found.'));
                }
                return Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: _buildDataTable(theme),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterSection(BuildContext context, bool isWeb) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Filters', style: Theme.of(context).textTheme.titleLarge),
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
                    onChanged: controller.setGenderFilter,
                    decoration: const InputDecoration(labelText: 'Gender', border: OutlineInputBorder()),
                    items: const [
                      DropdownMenuItem(value: '', child: Text('All Genders')),
                      DropdownMenuItem(value: 'Male', child: Text('Male')),
                      DropdownMenuItem(value: 'Female', child: Text('Female')),
                    ],
                  ),
                ),
                Obx(() => SizedBox(
                      width: isWeb ? 200 : double.infinity,
                      child: DropdownButtonFormField<String>(
                        onChanged: controller.setSubCasteFilter,
                        decoration: const InputDecoration(labelText: 'Sub-Caste', border: OutlineInputBorder()),
                        items: controller.subCasteOptions.map((String value) {
                          return DropdownMenuItem<String>(value: value, child: Text(value));
                        }).toList(),
                      ),
                    )),
                Obx(() => SizedBox(
                      width: isWeb ? 200 : double.infinity,
                      child: DropdownButtonFormField<String>(
                        onChanged: controller.setOccupationFilter,
                        decoration: const InputDecoration(labelText: 'Occupation', border: OutlineInputBorder()),
                        items: controller.occupationOptions.map((String value) {
                          return DropdownMenuItem<String>(value: value, child: Text(value));
                        }).toList(),
                      ),
                    )),
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

  DataTable _buildDataTable(ThemeData theme) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Gender')),
        DataColumn(label: Text('Birthdate')),
        DataColumn(label: Text('Email')),
        DataColumn(label: Text('Phone')),
        DataColumn(label: Text('Actions')),
      ],
      rows: controller.filteredUsers.map((user) {
        final fullName = '${user.basicInfo?.firstName ?? ''} ${user.basicInfo?.lastName ?? ''}';
        return DataRow(
          cells: [
            DataCell(Text(fullName)),
            DataCell(Text(user.basicInfo?.gender ?? 'N/A')),
            DataCell(Text(user.basicInfo?.birthdate ?? 'N/A')),
            DataCell(Text(user.basicInfo?.email ?? 'N/A')),
            DataCell(Text(user.basicInfo?.mobile ?? 'N/A')),
            DataCell(
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () => controller.goToUserDetails(user),
                    tooltip: 'View Details',
                    color: theme.colorScheme.secondary,
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => controller.goToEditUser(user),
                    tooltip: 'Edit User',
                    color: theme.primaryColor,
                  ),
                  IconButton(
                    icon: const Icon(Icons.power_settings_new),
                    onPressed: () => controller.inactivateUser(user),
                    tooltip: 'Inactivate User',
                    color: theme.colorScheme.error,
                  ),
                  IconButton(
                    icon: const Icon(Icons.card_membership),
                    onPressed: () => controller.goToMembership(user),
                    tooltip: 'Manage Membership',
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
