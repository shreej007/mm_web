import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/api_service.dart';
import 'package:myapp/app/data/api_urls.dart';
import 'package:myapp/app/data/models/user_model.dart';

class AddUserController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ApiService _apiService = ApiService();

  // --- State Management ---
  final isEditing = false.obs;
  final isLoading = false.obs;
  UserModel? _editingUser;

  // --- Section 1: Personal Information ---
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final genderController = TextEditingController();

  // --- Section 2: Contact Information ---
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  // --- Section 3: Address ---
  final streetController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final countryController = TextEditingController();

  // --- Section 4: Emergency Contact ---
  final emergencyContactNameController = TextEditingController();
  final emergencyContactRelationshipController = TextEditingController();
  final emergencyContactPhoneController = TextEditingController();

  // --- Section 5: Health Information ---
  final medicalConditionsController = TextEditingController();
  final allergiesController = TextEditingController();
  final medicationsController = TextEditingController();

  // --- Section 6: Membership ---
  final membershipPlanIdController = TextEditingController();
  final membershipStartDateController = TextEditingController();

  // --- Section 7: Profile & Settings ---
  final profileImageUrlController = TextEditingController();
  final receiveNotifications = true.obs; // Using RxBool for checkbox

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments is UserModel) {
      isEditing.value = true;
      _editingUser = Get.arguments;
      _populateFields(_editingUser!);
    }
  }

  void _populateFields(UserModel user) {
    // Section 1: Personal Info
    if (user.personalInfo != null) {
      firstNameController.text = user.personalInfo!.firstName;
      lastNameController.text = user.personalInfo!.lastName;
      dateOfBirthController.text = user.personalInfo!.dateOfBirth;
      genderController.text = user.personalInfo!.gender;
    }

    // Section 2: Contact Info
    if (user.contactInfo != null) {
      emailController.text = user.contactInfo!.email;
      phoneNumberController.text = user.contactInfo!.phoneNumber;
    }

    // Section 3: Address
    if (user.address != null) {
      streetController.text = user.address!.street;
      cityController.text = user.address!.city;
      stateController.text = user.address!.state;
      zipCodeController.text = user.address!.zipCode;
      countryController.text = user.address!.country;
    }

    // Section 4: Emergency Contact
    if (user.emergencyContact != null) {
      emergencyContactNameController.text = user.emergencyContact!.name;
      emergencyContactRelationshipController.text = user.emergencyContact!.relationship;
      emergencyContactPhoneController.text = user.emergencyContact!.phone;
    }

    // Section 5: Health Info
    if (user.healthInfo != null) {
      medicalConditionsController.text = user.healthInfo!.medicalConditions.join(', ');
      allergiesController.text = user.healthInfo!.allergies.join(', ');
      medicationsController.text = user.healthInfo!.medications.join(', ');
    }

    // Section 6: Membership
    if (user.membership != null) {
      membershipPlanIdController.text = user.membership!.planId;
      membershipStartDateController.text = user.membership!.startDate;
    }

    // Section 7: Profile
    if (user.profile != null) {
      profileImageUrlController.text = user.profile!.profileImageUrl;
      receiveNotifications.value = user.profile!.receiveNotifications;
    }
  }

  void saveUser() async {
    if (formKey.currentState!.validate()) {
      isLoading(true);

      final userData = {
        'personalInfo': {
          'firstName': firstNameController.text,
          'lastName': lastNameController.text,
          'dateOfBirth': dateOfBirthController.text,
          'gender': genderController.text,
        },
        'contactInfo': {
          'email': emailController.text,
          'phoneNumber': phoneNumberController.text,
        },
        'address': {
          'street': streetController.text,
          'city': cityController.text,
          'state': stateController.text,
          'zipCode': zipCodeController.text,
          'country': countryController.text,
        },
        'emergencyContact': {
          'name': emergencyContactNameController.text,
          'relationship': emergencyContactRelationshipController.text,
          'phone': emergencyContactPhoneController.text,
        },
        'healthInfo': {
          'medicalConditions': medicalConditionsController.text.split(',').map((e) => e.trim()).toList(),
          'allergies': allergiesController.text.split(',').map((e) => e.trim()).toList(),
          'medications': medicationsController.text.split(',').map((e) => e.trim()).toList(),
        },
        'membership': {
          'planId': membershipPlanIdController.text,
          'startDate': membershipStartDateController.text,
        },
        'profile': {
          'profileImageUrl': profileImageUrlController.text,
          'receiveNotifications': receiveNotifications.value,
        },
      };

      try {
        if (isEditing.value) {
          await _apiService.put(ApiUrls.userById(_editingUser!.id!), body: userData);
        } else {
          await _apiService.post(ApiUrls.users, body: userData);
        }

        Get.back(result: true); // Signal success to the previous screen
        Get.snackbar('Success', 'User ${isEditing.value ? 'updated' : 'added'} successfully!');
      } on ApiException catch (e) {
        Get.snackbar('API Error', e.message, backgroundColor: Colors.red);
      } catch (e) {
        Get.snackbar('Error', 'An unexpected error occurred: $e', backgroundColor: Colors.red);
      } finally {
        isLoading(false);
      }
    }
  }

  @override
  void onClose() {
    // Dispose all controllers
    firstNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    genderController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    streetController.dispose();
    cityController.dispose();
    stateController.dispose();
    zipCodeController.dispose();
    countryController.dispose();
    emergencyContactNameController.dispose();
    emergencyContactRelationshipController.dispose();
    emergencyContactPhoneController.dispose();
    medicalConditionsController.dispose();
    allergiesController.dispose();
    medicationsController.dispose();
    membershipPlanIdController.dispose();
    membershipStartDateController.dispose();
    profileImageUrlController.dispose();
    super.onClose();
  }
}
