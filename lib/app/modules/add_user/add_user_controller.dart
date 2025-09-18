
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/modules/users/users_controller.dart';

class AddUserController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final isEditing = false.obs;
  UserModel? _editingUser;

  // Basic Info
  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final genderController = TextEditingController();
  final birthdateController = TextEditingController();
  final subCasteController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();

  // Physical Attribute
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final complexionController = TextEditingController();
  final bloodGroupController = TextEditingController();

  // Horoscope Details
  final birthTimeController = TextEditingController();
  final birthDistrictController = TextEditingController();
  final rashiController = TextEditingController();
  final nakshatraController = TextEditingController();

  // Career Details
  final degreeController = TextEditingController();
  final edufieldController = TextEditingController();
  final occupationTypeController = TextEditingController();
  final occupationPlaceController = TextEditingController();
  final personalIncomeController = TextEditingController();

  // Family Details
  final fatherAlive = true.obs;
  final motherAlive = true.obs;
  final brothersController = TextEditingController();
  final marriedBrothersController = TextEditingController();
  final sistersController = TextEditingController();
  final marriedSisterController = TextEditingController();
  final parentNamesController = TextEditingController();
  final parentOccupationController = TextEditingController();
  final parentsResideCityController = TextEditingController();
  final nativeDistrictController = TextEditingController();
  final nativeTalukaController = TextEditingController();
  final familyEstateController = TextEditingController();
  final surnamesOfRelativesController = TextEditingController();
  final maternalPlaceSurnameController = TextEditingController();
  final intercasteStatusController = TextEditingController();
  final intercasteDetailsController = TextEditingController();

  // Expectations
  final preferredCitiesController = TextEditingController();
  final mangalDosh = false.obs;
  final expectedSubCasteController = TextEditingController();
  final expectedHeightController = TextEditingController();
  final minAgeGapController = TextEditingController();
  final expectedEducationController = TextEditingController();
  final expectedOccupationController = TextEditingController();
  final incomePerMonthController = TextEditingController();
  final expectedMaritalStatusController = TextEditingController();

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
    // Basic Info
    firstNameController.text = user.basicInfo.firstName;
    middleNameController.text = user.basicInfo.middleName;
    lastNameController.text = user.basicInfo.lastName;
    genderController.text = user.basicInfo.gender;
    birthdateController.text = user.basicInfo.birthdate;
    subCasteController.text = user.basicInfo.subCaste;
    emailController.text = user.basicInfo.email;
    mobileController.text = user.basicInfo.mobile;
    passwordController.text = user.basicInfo.password;

    // Physical Attribute
    heightController.text = user.physicalAttribute.height;
    weightController.text = user.physicalAttribute.weight;
    complexionController.text = user.physicalAttribute.complexion;
    bloodGroupController.text = user.physicalAttribute.bloodGroup;

    // Horoscope Details
    birthTimeController.text = user.horoscopeDetails.birthTime;
    birthDistrictController.text = user.horoscopeDetails.birthDistrict;
    rashiController.text = user.horoscopeDetails.rashi;
    nakshatraController.text = user.horoscopeDetails.nakshatra;

    // Career Details
    degreeController.text = user.careerDetails.degree;
    edufieldController.text = user.careerDetails.edufield;
    occupationTypeController.text = user.careerDetails.occupationType;
    occupationPlaceController.text = user.careerDetails.occupationPlace;
    personalIncomeController.text = user.careerDetails.personalIncome.toString();

    // Family Details
    fatherAlive.value = user.familyDetails.fatherAlive;
    motherAlive.value = user.familyDetails.motherAlive;
    brothersController.text = user.familyDetails.brothers.toString();
    marriedBrothersController.text = user.familyDetails.marriedBrothers.toString();
    sistersController.text = user.familyDetails.sisters.toString();
    marriedSisterController.text = user.familyDetails.marriedSister.toString();
    parentNamesController.text = user.familyDetails.parentNames;
    parentOccupationController.text = user.familyDetails.parentOccupation;
    parentsResideCityController.text = user.familyDetails.parentsResideCity;
    nativeDistrictController.text = user.familyDetails.nativeDistrict;
    nativeTalukaController.text = user.familyDetails.nativeTaluka;
    familyEstateController.text = user.familyDetails.familyEstate;
    surnamesOfRelativesController.text = user.familyDetails.surnamesOfRelatives.join(', ');
    maternalPlaceSurnameController.text = user.familyDetails.maternalPlaceSurname;
    intercasteStatusController.text = user.familyDetails.intercasteStatus;
    intercasteDetailsController.text = user.familyDetails.intercasteDetails;

    // Expectations
    preferredCitiesController.text = user.expectations.preferredCities.join(', ');
    mangalDosh.value = user.expectations.mangalDosh;
    expectedSubCasteController.text = user.expectations.expectedSubCaste;
    expectedHeightController.text = user.expectations.expectedHeight;
    minAgeGapController.text = user.expectations.minAgeGap.toString();
    expectedEducationController.text = user.expectations.expectedEducation;
    expectedOccupationController.text = user.expectations.expectedOccupation;
    incomePerMonthController.text = user.expectations.incomePerMonth.toString();
    expectedMaritalStatusController.text = user.expectations.expectedMaritalStatus;
  }

  void saveUser() {
    if (formKey.currentState!.validate()) {
      final newUser = UserModel(
        basicInfo: BasicInfo(
          firstName: firstNameController.text,
          middleName: middleNameController.text,
          lastName: lastNameController.text,
          gender: genderController.text,
          birthdate: birthdateController.text,
          subCaste: subCasteController.text,
          email: emailController.text,
          mobile: mobileController.text,
          password: passwordController.text,
        ),
        physicalAttribute: PhysicalAttribute(
          height: heightController.text,
          weight: weightController.text,
          complexion: complexionController.text,
          bloodGroup: bloodGroupController.text,
        ),
        horoscopeDetails: HoroscopeDetails(
          birthTime: birthTimeController.text,
          birthDistrict: birthDistrictController.text,
          rashi: rashiController.text,
          nakshatra: nakshatraController.text,
        ),
        careerDetails: CareerDetails(
          degree: degreeController.text,
          edufield: edufieldController.text,
          occupationType: occupationTypeController.text,
          occupationPlace: occupationPlaceController.text,
          personalIncome: int.tryParse(personalIncomeController.text) ?? 0,
        ),
        familyDetails: FamilyDetails(
          fatherAlive: fatherAlive.value,
          motherAlive: motherAlive.value,
          brothers: int.tryParse(brothersController.text) ?? 0,
          marriedBrothers: int.tryParse(marriedBrothersController.text) ?? 0,
          sisters: int.tryParse(sistersController.text) ?? 0,
          marriedSister: int.tryParse(marriedSisterController.text) ?? 0,
          parentNames: parentNamesController.text,
          parentOccupation: parentOccupationController.text,
          parentsResideCity: parentsResideCityController.text,
          nativeDistrict: nativeDistrictController.text,
          nativeTaluka: nativeTalukaController.text,
          familyEstate: familyEstateController.text,
          surnamesOfRelatives: surnamesOfRelativesController.text.split(',').map((e) => e.trim()).toList(),
          maternalPlaceSurname: maternalPlaceSurnameController.text,
          intercasteStatus: intercasteStatusController.text,
          intercasteDetails: intercasteDetailsController.text,
        ),
        expectations: Expectations(
          preferredCities: preferredCitiesController.text.split(',').map((e) => e.trim()).toList(),
          mangalDosh: mangalDosh.value,
          expectedSubCaste: expectedSubCasteController.text,
          expectedHeight: expectedHeightController.text,
          minAgeGap: int.tryParse(minAgeGapController.text) ?? 0,
          expectedEducation: expectedEducationController.text,
          expectedOccupation: expectedOccupationController.text,
          incomePerMonth: double.tryParse(incomePerMonthController.text) ?? 0.0,
          expectedMaritalStatus: expectedMaritalStatusController.text,
        ),
        profilePhotos: _editingUser?.profilePhotos ?? ProfilePhotos(album: []),
      );

      final usersController = Get.find<UsersController>();
      if (isEditing.value) {
        // Find the index and update
        final index = usersController.filteredUsers.indexWhere((u) => u.basicInfo.email == _editingUser!.basicInfo.email);
        if (index != -1) {
          usersController.filteredUsers[index] = newUser;
        }
      } else {
        usersController.filteredUsers.add(newUser);
      }

      Get.back(); // Go back to the user list
      Get.snackbar(
        'Success',
        'User ${isEditing.value ? 'updated' : 'added'} successfully!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  @override
  void onClose() {
    // Dispose all controllers
    firstNameController.dispose();
    middleNameController.dispose();
    lastNameController.dispose();
    genderController.dispose();
    birthdateController.dispose();
    subCasteController.dispose();
    emailController.dispose();
    mobileController.dispose();
    passwordController.dispose();
    heightController.dispose();
    weightController.dispose();
    complexionController.dispose();
    bloodGroupController.dispose();
    birthTimeController.dispose();
    birthDistrictController.dispose();
    rashiController.dispose();
    nakshatraController.dispose();
    degreeController.dispose();
    edufieldController.dispose();
    occupationTypeController.dispose();
    occupationPlaceController.dispose();
    personalIncomeController.dispose();
    brothersController.dispose();
    marriedBrothersController.dispose();
    sistersController.dispose();
    marriedSisterController.dispose();
    parentNamesController.dispose();
    parentOccupationController.dispose();
    parentsResideCityController.dispose();
    nativeDistrictController.dispose();
    nativeTalukaController.dispose();
    familyEstateController.dispose();
    surnamesOfRelativesController.dispose();
    maternalPlaceSurnameController.dispose();
    intercasteStatusController.dispose();
    intercasteDetailsController.dispose();
    preferredCitiesController.dispose();
    expectedSubCasteController.dispose();
    expectedHeightController.dispose();
    minAgeGapController.dispose();
    expectedEducationController.dispose();
    expectedOccupationController.dispose();
    incomePerMonthController.dispose();
    expectedMaritalStatusController.dispose();
    super.onClose();
  }
}
