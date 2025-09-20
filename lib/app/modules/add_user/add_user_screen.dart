
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
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text('Save User'),
              onPressed: controller.saveUser,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
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
                _buildSection(
                  context,
                  title: '1. Basic Information',
                  child: _buildBasicInfoForm(),
                ),
                _buildSection(
                  context,
                  title: '2. Physical Attributes',
                  child: _buildPhysicalAttributeForm(),
                ),
                _buildSection(
                  context,
                  title: '3. Horoscope Details',
                  child: _buildHoroscopeForm(),
                ),
                 _buildSection(
                  context,
                  title: '4. Career Details',
                  child: _buildCareerForm(),
                ),
                 _buildSection(
                  context,
                  title: '5. Family Details',
                  child: _buildFamilyForm(),
                ),
                 _buildSection(
                  context,
                  title: '6. Expectations',
                  child: _buildExpectationForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, {required String title, required Widget child}) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.only(bottom: 24),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
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
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300, // Fixed width for a grid-like structure
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            filled: true,
          ),
          keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
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
            onChanged: (newValue) {
              if (newValue != null) {
                value.value = newValue;
              }
            },
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
          )));
}

  Widget _buildFormWrapper(List<Widget> children) {
    return Wrap(
      spacing: 16.0, // Horizontal space between fields
      runSpacing: 16.0, // Vertical space between rows
      children: children,
    );
  }


  Widget _buildBasicInfoForm() {
    return _buildFormWrapper([
        _buildTextFormField(controller: controller.firstNameController, label: 'First Name', icon: Icons.person_outline),
        _buildTextFormField(controller: controller.middleNameController, label: 'Middle Name', icon: Icons.person_outline),
        _buildTextFormField(controller: controller.lastNameController, label: 'Last Name', icon: Icons.person_outline),
        _buildTextFormField(controller: controller.genderController, label: 'Gender', icon: Icons.wc),
        _buildTextFormField(controller: controller.birthdateController, label: 'Birthdate (YYYY-MM-DD)', icon: Icons.calendar_today),
        _buildTextFormField(controller: controller.subCasteController, label: 'Sub-Caste', icon: Icons.group),
        _buildTextFormField(controller: controller.emailController, label: 'Email', icon: Icons.email_outlined),
        _buildTextFormField(controller: controller.mobileController, label: 'Mobile Number', icon: Icons.phone_iphone),
        _buildTextFormField(controller: controller.passwordController, label: 'Password', icon: Icons.lock_outline),
      ]);
  }

  Widget _buildPhysicalAttributeForm() {
    return _buildFormWrapper([
        _buildTextFormField(controller: controller.heightController, label: 'Height (e.g., 5\'9")', icon: Icons.height),
        _buildTextFormField(controller: controller.weightController, label: 'Weight (e.g., 72kg)', icon: Icons.monitor_weight_outlined),
        _buildTextFormField(controller: controller.complexionController, label: 'Complexion', icon: Icons.face),
        _buildTextFormField(controller: controller.bloodGroupController, label: 'Blood Group', icon: Icons.bloodtype_outlined),
      ]);
  }

  Widget _buildHoroscopeForm() {
    return _buildFormWrapper([
        _buildTextFormField(controller: controller.birthTimeController, label: 'Birth Time (e.g., 10:45 AM)', icon: Icons.access_time),
        _buildTextFormField(controller: controller.birthDistrictController, label: 'Birth District', icon: Icons.location_city),
        _buildTextFormField(controller: controller.rashiController, label: 'Rashi', icon: Icons.brightness_4_outlined),
        _buildTextFormField(controller: controller.nakshatraController, label: 'Nakshatra', icon: Icons.star_border),
      ]);
  }

  Widget _buildCareerForm() {
    return _buildFormWrapper([
        _buildTextFormField(controller: controller.degreeController, label: 'Degree', icon: Icons.school_outlined),
        _buildTextFormField(controller: controller.edufieldController, label: 'Education Field', icon: Icons.science_outlined),
        _buildTextFormField(controller: controller.occupationTypeController, label: 'Occupation', icon: Icons.work_outline),
        _buildTextFormField(controller: controller.occupationPlaceController, label: 'Occupation Place', icon: Icons.location_on_outlined),
        _buildTextFormField(controller: controller.personalIncomeController, label: 'Monthly Income (INR)', icon: Icons.attach_money, isNumeric: true),
      ]);
  }

  Widget _buildFamilyForm() {
    return _buildFormWrapper([
        _buildCheckbox(title: 'Father Alive', value: controller.fatherAlive),
        _buildCheckbox(title: 'Mother Alive', value: controller.motherAlive),
        _buildTextFormField(controller: controller.brothersController, label: 'Number of Brothers', icon: Icons.people_alt_outlined, isNumeric: true),
        _buildTextFormField(controller: controller.marriedBrothersController, label: 'Married Brothers', icon: Icons.people_alt_outlined, isNumeric: true),
        _buildTextFormField(controller: controller.sistersController, label: 'Number of Sisters', icon: Icons.people_alt_outlined, isNumeric: true),
        _buildTextFormField(controller: controller.marriedSisterController, label: 'Married Sisters', icon: Icons.people_alt_outlined, isNumeric: true),
        _buildTextFormField(controller: controller.parentNamesController, label: 'Parent Names', icon: Icons.supervisor_account_outlined),
        _buildTextFormField(controller: controller.parentOccupationController, label: 'Parent Occupation', icon: Icons.work_history_outlined),
        _buildTextFormField(controller: controller.parentsResideCityController, label: 'Parents Reside City', icon: Icons.location_city_outlined),
        _buildTextFormField(controller: controller.nativeDistrictController, label: 'Native District', icon: Icons.location_city_outlined),
        _buildTextFormField(controller: controller.nativeTalukaController, label: 'Native Taluka', icon: Icons.location_city_outlined),
        _buildTextFormField(controller: controller.familyEstateController, label: 'Family Estate', icon: Icons.home_work_outlined),
        _buildTextFormField(controller: controller.surnamesOfRelativesController, label: 'Surnames of Relatives', icon: Icons.group_outlined),
        _buildTextFormField(controller: controller.maternalPlaceSurnameController, label: 'Maternal Place Surname', icon: Icons.group_outlined),
        _buildTextFormField(controller: controller.intercasteStatusController, label: 'Intercaste Status (Yes/No)', icon: Icons.merge_type_outlined),
        _buildTextFormField(controller: controller.intercasteDetailsController, label: 'Intercaste Details', icon: Icons.merge_type_outlined),
      ]);
  }

  Widget _buildExpectationForm() {
    return _buildFormWrapper([
        _buildTextFormField(controller: controller.preferredCitiesController, label: 'Preferred Cities', icon: Icons.location_city_outlined),
        _buildCheckbox(title: 'Accepts Mangal Dosh', value: controller.mangalDosh),
        _buildTextFormField(controller: controller.expectedSubCasteController, label: 'Expected Sub-Caste', icon: Icons.group_outlined),
        _buildTextFormField(controller: controller.expectedHeightController, label: 'Expected Height Range', icon: Icons.height_outlined),
        _buildTextFormField(controller: controller.minAgeGapController, label: 'Minimum Age Gap (Years)', icon: Icons.calendar_view_day_outlined, isNumeric: true),
        _buildTextFormField(controller: controller.expectedEducationController, label: 'Expected Education', icon: Icons.school_outlined),
        _buildTextFormField(controller: controller.expectedOccupationController, label: 'Expected Occupation', icon: Icons.work_outline_outlined),
        _buildTextFormField(controller: controller.incomePerMonthController, label: 'Expected Income per Month (INR)', icon: Icons.monetization_on_outlined, isNumeric: true),
        _buildTextFormField(controller: controller.expectedMaritalStatusController, label: 'Expected Marital Status', icon: Icons.family_restroom_outlined),
      ]);
  }
}
