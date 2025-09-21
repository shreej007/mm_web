import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/add_user/add_user_controller.dart';

class AddUserScreen extends GetView<AddUserController> {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWeb = MediaQuery.of(context).size.width > 600;
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.isEditing.value ? 'Edit User' : 'Add New User')),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('Cancel'),
          ),
          const SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Obx(() {
              return ElevatedButton.icon(
                icon: controller.isLoading.value
                    ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                    : const Icon(Icons.save),
                label: Text(controller.isLoading.value ? 'Saving...' : 'Save User'),
                onPressed: controller.isLoading.value ? null : controller.saveUser,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              );
            }),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(isWeb ? 24.0 : 16.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                _buildSection(context, title: '1. Personal Information', child: _buildPersonalInfoForm()),
                _buildSection(context, title: '2. Contact Information', child: _buildContactInfoForm()),
                _buildSection(context, title: '3. Address', child: _buildAddressForm()),
                _buildSection(context, title: '4. Emergency Contact', child: _buildEmergencyContactForm()),
                _buildSection(context, title: '5. Health Information', child: _buildHealthInfoForm()),
                _buildSection(context, title: '6. Membership Details', child: _buildMembershipForm()),
                _buildSection(context, title: '7. Profile & Settings', child: _buildProfileForm()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, {required String title, required Widget child}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 24),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            const Divider(height: 30),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool isNumeric = false,
    bool isRequired = true,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
          validator: validator ?? (value) {
            if (isRequired && (value == null || value.isEmpty)) {
              return '$label is required';
            }
            return null;
          },
        ),
      ),
    );
  }

  Widget _buildCheckbox({required String title, required RxBool value}) {
    return SizedBox(
      width: 300,
      child: Obx(() => CheckboxListTile(
        title: Text(title),
        value: value.value,
        onChanged: (newValue) => value.value = newValue ?? false,
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: EdgeInsets.zero,
      )),
    );
  }

  Widget _buildFormWrapper(List<Widget> children) {
    return Wrap(spacing: 16.0, runSpacing: 16.0, children: children);
  }

  // --- Form Section Builders ---

  Widget _buildPersonalInfoForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.firstNameController, label: 'First Name', icon: Icons.person_outline),
      _buildTextFormField(controller: controller.lastNameController, label: 'Last Name', icon: Icons.person_outline),
      _buildTextFormField(controller: controller.dateOfBirthController, label: 'Birthdate (YYYY-MM-DD)', icon: Icons.calendar_today),
      _buildTextFormField(controller: controller.genderController, label: 'Gender', icon: Icons.wc),
    ]);
  }

  Widget _buildContactInfoForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.emailController, label: 'Email', icon: Icons.email_outlined),
      _buildTextFormField(controller: controller.phoneNumberController, label: 'Phone Number', icon: Icons.phone_iphone),
    ]);
  }

  Widget _buildAddressForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.streetController, label: 'Street', icon: Icons.add_road, isRequired: false),
      _buildTextFormField(controller: controller.cityController, label: 'City', icon: Icons.location_city, isRequired: false),
      _buildTextFormField(controller: controller.stateController, label: 'State', icon: Icons.map_outlined, isRequired: false),
      _buildTextFormField(controller: controller.zipCodeController, label: 'Zip Code', icon: Icons.local_post_office_outlined, isRequired: false),
      _buildTextFormField(controller: controller.countryController, label: 'Country', icon: Icons.public_outlined, isRequired: false),
    ]);
  }

  Widget _buildEmergencyContactForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.emergencyContactNameController, label: 'Emergency Contact Name', icon: Icons.person_pin, isRequired: false),
      _buildTextFormField(controller: controller.emergencyContactRelationshipController, label: 'Relationship', icon: Icons.people_outline, isRequired: false),
      _buildTextFormField(controller: controller.emergencyContactPhoneController, label: 'Emergency Phone', icon: Icons.phone_in_talk_outlined, isRequired: false),
    ]);
  }

  Widget _buildHealthInfoForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.medicalConditionsController, label: 'Medical Conditions (comma-separated)', icon: Icons.medical_services_outlined, isRequired: false),
      _buildTextFormField(controller: controller.allergiesController, label: 'Allergies (comma-separated)', icon: Icons.warning_amber_outlined, isRequired: false),
      _buildTextFormField(controller: controller.medicationsController, label: 'Medications (comma-separated)', icon: Icons.medication_outlined, isRequired: false),
    ]);
  }

  Widget _buildMembershipForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.membershipPlanIdController, label: 'Membership Plan ID', icon: Icons.card_membership_outlined, isRequired: false),
      _buildTextFormField(controller: controller.membershipStartDateController, label: 'Start Date (YYYY-MM-DD)', icon: Icons.date_range_outlined, isRequired: false),
    ]);
  }

  Widget _buildProfileForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.profileImageUrlController, label: 'Profile Image URL', icon: Icons.image_outlined, isRequired: false),
      _buildCheckbox(title: 'Receive Notifications', value: controller.receiveNotifications),
    ]);
  }
}
