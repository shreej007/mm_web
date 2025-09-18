
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/add_user/add_user_controller.dart';

class AddUserScreen extends GetView<AddUserController> {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.isEditing.value ? 'Edit User' : 'Add New User')),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text('Save User'),
              onPressed: controller.saveUser,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
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
    );
  }

  Widget _buildSection(BuildContext context, {required String title, required Widget child}) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 20),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildTextFormField({required TextEditingController controller, required String label, bool isNumeric = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
        ),
        keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
      ),
    );
  }

 Widget _buildCheckbox({required String title, required RxBool value}) {
  return Obx(() => CheckboxListTile(
        title: Text(title),
        value: value.value,
        onChanged: (newValue) {
          if (newValue != null) {
            value.value = newValue;
          }
        },
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: EdgeInsets.zero,
      ));
}


  Widget _buildBasicInfoForm() {
    return Column(
      children: [
        _buildTextFormField(controller: controller.firstNameController, label: 'First Name'),
        _buildTextFormField(controller: controller.middleNameController, label: 'Middle Name'),
        _buildTextFormField(controller: controller.lastNameController, label: 'Last Name'),
        _buildTextFormField(controller: controller.genderController, label: 'Gender'),
        _buildTextFormField(controller: controller.birthdateController, label: 'Birthdate (YYYY-MM-DD)'),
        _buildTextFormField(controller: controller.subCasteController, label: 'Sub-Caste'),
        _buildTextFormField(controller: controller.emailController, label: 'Email'),
        _buildTextFormField(controller: controller.mobileController, label: 'Mobile Number'),
        _buildTextFormField(controller: controller.passwordController, label: 'Password'),
      ],
    );
  }

  Widget _buildPhysicalAttributeForm() {
    return Column(
      children: [
        _buildTextFormField(controller: controller.heightController, label: 'Height (e.g., 5\'9")'),
        _buildTextFormField(controller: controller.weightController, label: 'Weight (e.g., 72kg)'),
        _buildTextFormField(controller: controller.complexionController, label: 'Complexion'),
        _buildTextFormField(controller: controller.bloodGroupController, label: 'Blood Group'),
      ],
    );
  }

  Widget _buildHoroscopeForm() {
    return Column(
      children: [
        _buildTextFormField(controller: controller.birthTimeController, label: 'Birth Time (e.g., 10:45 AM)'),
        _buildTextFormField(controller: controller.birthDistrictController, label: 'Birth District'),
        _buildTextFormField(controller: controller.rashiController, label: 'Rashi'),
        _buildTextFormField(controller: controller.nakshatraController, label: 'Nakshatra'),
      ],
    );
  }

  Widget _buildCareerForm() {
    return Column(
      children: [
        _buildTextFormField(controller: controller.degreeController, label: 'Degree'),
        _buildTextFormField(controller: controller.edufieldController, label: 'Education Field'),
        _buildTextFormField(controller: controller.occupationTypeController, label: 'Occupation'),
        _buildTextFormField(controller: controller.occupationPlaceController, label: 'Occupation Place'),
        _buildTextFormField(controller: controller.personalIncomeController, label: 'Monthly Income (INR)', isNumeric: true),
      ],
    );
  }

  Widget _buildFamilyForm() {
    return Column(
      children: [
        _buildCheckbox(title: 'Father Alive', value: controller.fatherAlive),
        _buildCheckbox(title: 'Mother Alive', value: controller.motherAlive),
        _buildTextFormField(controller: controller.brothersController, label: 'Number of Brothers', isNumeric: true),
        _buildTextFormField(controller: controller.marriedBrothersController, label: 'Married Brothers', isNumeric: true),
        _buildTextFormField(controller: controller.sistersController, label: 'Number of Sisters', isNumeric: true),
        _buildTextFormField(controller: controller.marriedSisterController, label: 'Married Sisters', isNumeric: true),
        _buildTextFormField(controller: controller.parentNamesController, label: 'Parent Names'),
        _buildTextFormField(controller: controller.parentOccupationController, label: 'Parent Occupation'),
        _buildTextFormField(controller: controller.parentsResideCityController, label: 'Parents Reside City'),
        _buildTextFormField(controller: controller.nativeDistrictController, label: 'Native District'),
        _buildTextFormField(controller: controller.nativeTalukaController, label: 'Native Taluka'),
        _buildTextFormField(controller: controller.familyEstateController, label: 'Family Estate'),
        _buildTextFormField(controller: controller.surnamesOfRelativesController, label: 'Surnames of Relatives (comma-separated)'),
        _buildTextFormField(controller: controller.maternalPlaceSurnameController, label: 'Maternal Place Surname'),
        _buildTextFormField(controller: controller.intercasteStatusController, label: 'Intercaste Status (Yes/No)'),
        _buildTextFormField(controller: controller.intercasteDetailsController, label: 'Intercaste Details'),
      ],
    );
  }

  Widget _buildExpectationForm() {
    return Column(
      children: [
        _buildTextFormField(controller: controller.preferredCitiesController, label: 'Preferred Cities (comma-separated)'),
        _buildCheckbox(title: 'Accepts Mangal Dosh', value: controller.mangalDosh),
        _buildTextFormField(controller: controller.expectedSubCasteController, label: 'Expected Sub-Caste'),
        _buildTextFormField(controller: controller.expectedHeightController, label: 'Expected Height Range'),
        _buildTextFormField(controller: controller.minAgeGapController, label: 'Minimum Age Gap (Years)', isNumeric: true),
        _buildTextFormField(controller: controller.expectedEducationController, label: 'Expected Education'),
        _buildTextFormField(controller: controller.expectedOccupationController, label: 'Expected Occupation'),
        _buildTextFormField(controller: controller.incomePerMonthController, label: 'Expected Income per Month (INR)', isNumeric: true),
        _buildTextFormField(controller: controller.expectedMaritalStatusController, label: 'Expected Marital Status'),
      ],
    );
  }
}
