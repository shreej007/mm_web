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
                _buildSection(context, title: '1. Basic Information', child: _buildBasicInfoForm()),
                _buildSection(context, title: '2. Physical Attributes', child: _buildPhysicalAttributeForm()),
                _buildSection(context, title: '3. Horoscope Details', child: _buildHoroscopeDetailsForm()),
                _buildSection(context, title: '4. Career Details', child: _buildCareerDetailsForm()),
                _buildSection(context, title: '5. Family Details', child: _buildFamilyDetailsForm()),
                _buildSection(context, title: '6. Expectations', child: _buildExpectationsForm()),
                _buildSection(context, title: '7. Profile Photos', child: _buildProfilePhotosForm()),
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

  Widget _buildBasicInfoForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.firstNameController, label: 'First Name', icon: Icons.person_outline),
      _buildTextFormField(controller: controller.middleNameController, label: 'Middle Name', icon: Icons.person_outline, isRequired: false),
      _buildTextFormField(controller: controller.lastNameController, label: 'Last Name', icon: Icons.person_outline),
      _buildTextFormField(controller: controller.genderController, label: 'Gender', icon: Icons.wc),
      _buildTextFormField(controller: controller.birthdateController, label: 'Birthdate (YYYY-MM-DD)', icon: Icons.calendar_today),
      _buildTextFormField(controller: controller.subCasteController, label: 'Sub-Caste', icon: Icons.people_outline, isRequired: false),
      _buildTextFormField(controller: controller.emailController, label: 'Email', icon: Icons.email_outlined),
      _buildTextFormField(controller: controller.mobileController, label: 'Mobile', icon: Icons.phone_iphone),
    ]);
  }

  Widget _buildPhysicalAttributeForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.heightController, label: 'Height', icon: Icons.height, isRequired: false),
      _buildTextFormField(controller: controller.weightController, label: 'Weight', icon: Icons.monitor_weight_outlined, isRequired: false),
      _buildTextFormField(controller: controller.complexionController, label: 'Complexion', icon: Icons.face, isRequired: false),
      _buildTextFormField(controller: controller.bloodGroupController, label: 'Blood Group', icon: Icons.bloodtype_outlined, isRequired: false),
    ]);
  }

  Widget _buildHoroscopeDetailsForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.birthTimeController, label: 'Birth Time', icon: Icons.access_time, isRequired: false),
      _buildTextFormField(controller: controller.birthDistrictController, label: 'Birth District', icon: Icons.location_city, isRequired: false),
      _buildTextFormField(controller: controller.rashiController, label: 'Rashi', icon: Icons.star_border, isRequired: false),
      _buildTextFormField(controller: controller.nakshatraController, label: 'Nakshatra', icon: Icons.wb_sunny_outlined, isRequired: false),
    ]);
  }

  Widget _buildCareerDetailsForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.degreeController, label: 'Degree', icon: Icons.school_outlined, isRequired: false),
      _buildTextFormField(controller: controller.edufieldController, label: 'Education Field', icon: Icons.work_outline, isRequired: false),
      _buildTextFormField(controller: controller.occupationTypeController, label: 'Occupation Type', icon: Icons.business_center_outlined, isRequired: false),
      _buildTextFormField(controller: controller.occupationPlaceController, label: 'Occupation Place', icon: Icons.location_on_outlined, isRequired: false),
      _buildTextFormField(controller: controller.personalIncomeController, label: 'Personal Income', icon: Icons.attach_money_outlined, isRequired: false, isNumeric: true),
    ]);
  }

  Widget _buildFamilyDetailsForm() {
    return _buildFormWrapper([
      _buildCheckbox(title: 'Father Alive', value: controller.fatherAliveController),
      _buildCheckbox(title: 'Mother Alive', value: controller.motherAliveController),
      _buildTextFormField(controller: controller.brothersController, label: 'Number of Brothers', icon: Icons.group_outlined, isRequired: false, isNumeric: true),
      _buildTextFormField(controller: controller.marriedBrothersController, label: 'Married Brothers', icon: Icons.group_outlined, isRequired: false, isNumeric: true),
      _buildTextFormField(controller: controller.sistersController, label: 'Number of Sisters', icon: Icons.group_outlined, isRequired: false, isNumeric: true),
      _buildTextFormField(controller: controller.marriedSisterController, label: 'Married Sisters', icon: Icons.group_outlined, isRequired: false, isNumeric: true),
      _buildTextFormField(controller: controller.parentNamesController, label: 'Parent Names', icon: Icons.person_pin_circle_outlined, isRequired: false),
      _buildTextFormField(controller: controller.parentOccupationController, label: 'Parent Occupation', icon: Icons.work_history_outlined, isRequired: false),
      _buildTextFormField(controller: controller.parentsResideCityController, label: 'Parents Reside City', icon: Icons.location_city_outlined, isRequired: false),
      _buildTextFormField(controller: controller.nativeDistrictController, label: 'Native District', icon: Icons.map, isRequired: false),
      _buildTextFormField(controller: controller.nativeTalukaController, label: 'Native Taluka', icon: Icons.map_outlined, isRequired: false),
      _buildTextFormField(controller: controller.familyEstateController, label: 'Family Estate', icon: Icons.home_work_outlined, isRequired: false),
      _buildTextFormField(controller: controller.surnamesOfRelativesController, label: 'Surnames of Relatives (comma-separated)', icon: Icons.people_alt_outlined, isRequired: false),
      _buildTextFormField(controller: controller.maternalPlaceSurnameController, label: 'Maternal Place Surname', icon: Icons.family_restroom_outlined, isRequired: false),
      _buildTextFormField(controller: controller.intercasteStatusController, label: 'Intercaste Status', icon: Icons.merge_type_outlined, isRequired: false),
      _buildTextFormField(controller: controller.intercasteDetailsController, label: 'Intercaste Details', icon: Icons.info_outline, isRequired: false),
    ]);
  }

  Widget _buildExpectationsForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.preferredCitiesController, label: 'Preferred Cities (comma-separated)', icon: Icons.location_city_rounded, isRequired: false),
      _buildCheckbox(title: 'Mangal Dosh', value: controller.mangalDoshController),
      _buildTextFormField(controller: controller.expectedSubCasteController, label: 'Expected Sub-Caste', icon: Icons.people_outline, isRequired: false),
      _buildTextFormField(controller: controller.expectedHeightController, label: 'Expected Height', icon: Icons.height_outlined, isRequired: false),
      _buildTextFormField(controller: controller.minAgeGapController, label: 'Min Age Gap', icon: Icons.calendar_view_day_outlined, isRequired: false, isNumeric: true),
      _buildTextFormField(controller: controller.expectedEducationController, label: 'Expected Education', icon: Icons.school, isRequired: false),
      _buildTextFormField(controller: controller.expectedOccupationController, label: 'Expected Occupation', icon: Icons.work, isRequired: false),
      _buildTextFormField(controller: controller.incomePerMonthController, label: 'Expected Income Per Month', icon: Icons.payments_outlined, isRequired: false, isNumeric: true),
      _buildTextFormField(controller: controller.expectedMaritalStatusController, label: 'Expected Marital Status', icon: Icons.family_restroom_sharp, isRequired: false),
    ]);
  }

  Widget _buildProfilePhotosForm() {
    return _buildFormWrapper([
      _buildTextFormField(controller: controller.profilePicUrlController, label: 'Profile Picture URL', icon: Icons.image_search, isRequired: false),
      _buildTextFormField(controller: controller.albumController, label: 'Album Image URLs (comma-separated)', icon: Icons.photo_album_outlined, isRequired: false),
    ]);
  }
}
