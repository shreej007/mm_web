import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/api_service.dart';
import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/data/models/basic_info_model.dart';
import 'package:myapp/app/data/models/physical_attribute_model.dart';
import 'package:myapp/app/data/models/horoscope_details_model.dart';
import 'package:myapp/app/data/models/career_details_model.dart';
import 'package:myapp/app/data/models/family_details_model.dart';
import 'package:myapp/app/data/models/expectations_model.dart';
import 'package:myapp/app/data/models/profile_photos_model.dart';

class AddUserController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ApiService _apiService = ApiService();

  final isEditing = false.obs;
  final isLoading = false.obs;
  UserModel? _editingUser;

  // --- Basic Info ---
  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final genderController = TextEditingController();
  final birthdateController = TextEditingController();
  final subCasteController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();

  // --- Physical Attribute ---
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final complexionController = TextEditingController();
  final bloodGroupController = TextEditingController();

  // --- Horoscope Details ---
  final birthTimeController = TextEditingController();
  final birthDistrictController = TextEditingController();
  final rashiController = TextEditingController();
  final nakshatraController = TextEditingController();

  // --- Career Details ---
  final degreeController = TextEditingController();
  final edufieldController = TextEditingController();
  final occupationTypeController = TextEditingController();
  final occupationPlaceController = TextEditingController();
  final personalIncomeController = TextEditingController();

  // --- Family Details ---
  final fatherAliveController = true.obs;
  final motherAliveController = true.obs;
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

  // --- Expectations ---
  final preferredCitiesController = TextEditingController();
  final mangalDoshController = false.obs;
  final expectedSubCasteController = TextEditingController();
  final expectedHeightController = TextEditingController();
  final minAgeGapController = TextEditingController();
  final expectedEducationController = TextEditingController();
  final expectedOccupationController = TextEditingController();
  final incomePerMonthController = TextEditingController();
  final expectedMaritalStatusController = TextEditingController();

  // --- Profile Photos ---
  final profilePicUrlController = TextEditingController();
  final albumController = TextEditingController();

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
    firstNameController.text = user.basicInfo?.firstName ?? '';
    middleNameController.text = user.basicInfo?.middleName ?? '';
    lastNameController.text = user.basicInfo?.lastName ?? '';
    genderController.text = user.basicInfo?.gender ?? '';
    birthdateController.text = user.basicInfo?.birthdate ?? '';
    subCasteController.text = user.basicInfo?.subCaste ?? '';
    emailController.text = user.basicInfo?.email ?? '';
    mobileController.text = user.basicInfo?.mobile ?? '';

    // Physical Attribute
    heightController.text = user.physicalAttribute?.height ?? '';
    weightController.text = user.physicalAttribute?.weight ?? '';
    complexionController.text = user.physicalAttribute?.complexion ?? '';
    bloodGroupController.text = user.physicalAttribute?.bloodGroup ?? '';

    // Horoscope Details
    birthTimeController.text = user.horoscopeDetails?.birthTime ?? '';
    birthDistrictController.text = user.horoscopeDetails?.birthDistrict ?? '';
    rashiController.text = user.horoscopeDetails?.rashi ?? '';
    nakshatraController.text = user.horoscopeDetails?.nakshatra ?? '';

    // Career Details
    degreeController.text = user.careerDetails?.degree ?? '';
    edufieldController.text = user.careerDetails?.edufield ?? '';
    occupationTypeController.text = user.careerDetails?.occupationType ?? '';
    occupationPlaceController.text = user.careerDetails?.occupationPlace ?? '';
    personalIncomeController.text = user.careerDetails?.personalIncome?.toString() ?? '';

    // Family Details
    fatherAliveController.value = user.familyDetails?.fatherAlive ?? true;
    motherAliveController.value = user.familyDetails?.motherAlive ?? true;
    brothersController.text = user.familyDetails?.brothers?.toString() ?? '';
    marriedBrothersController.text = user.familyDetails?.marriedBrothers?.toString() ?? '';
    sistersController.text = user.familyDetails?.sisters?.toString() ?? '';
    marriedSisterController.text = user.familyDetails?.marriedSister?.toString() ?? '';
    parentNamesController.text = user.familyDetails?.parentNames ?? '';
    parentOccupationController.text = user.familyDetails?.parentOccupation ?? '';
    parentsResideCityController.text = user.familyDetails?.parentsResideCity ?? '';
    nativeDistrictController.text = user.familyDetails?.nativeDistrict ?? '';
    nativeTalukaController.text = user.familyDetails?.nativeTaluka ?? '';
    familyEstateController.text = user.familyDetails?.familyEstate ?? '';
    surnamesOfRelativesController.text = user.familyDetails?.surnamesOfRelatives?.join(', ') ?? '';
    maternalPlaceSurnameController.text = user.familyDetails?.maternalPlaceSurname ?? '';
    intercasteStatusController.text = user.familyDetails?.intercasteStatus ?? '';
    intercasteDetailsController.text = user.familyDetails?.intercasteDetails ?? '';

    // Expectations
    preferredCitiesController.text = user.expectations?.preferredCities?.join(', ') ?? '';
    mangalDoshController.value = user.expectations?.mangalDosh ?? false;
    expectedSubCasteController.text = user.expectations?.expectedSubCaste ?? '';
    expectedHeightController.text = user.expectations?.expectedHeight ?? '';
    minAgeGapController.text = user.expectations?.minAgeGap?.toString() ?? '';
    expectedEducationController.text = user.expectations?.expectedEducation ?? '';
    expectedOccupationController.text = user.expectations?.expectedOccupation ?? '';
    incomePerMonthController.text = user.expectations?.incomePerMonth?.toString() ?? '';
    expectedMaritalStatusController.text = user.expectations?.expectedMaritalStatus ?? '';

    // Profile Photos
    profilePicUrlController.text = user.profilePhotos?.profilePicUrl ?? '';
    albumController.text = user.profilePhotos?.album?.join(', ') ?? '';
  }

  void saveUser() async {
    if (formKey.currentState!.validate()) {
      isLoading(true);

      final user = UserModel(
        id: _editingUser?.id,
        basicInfo: BasicInfo(
          firstName: firstNameController.text,
          middleName: middleNameController.text,
          lastName: lastNameController.text,
          gender: genderController.text,
          birthdate: birthdateController.text,
          subCaste: subCasteController.text,
          email: emailController.text,
          mobile: mobileController.text,
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
          personalIncome: double.tryParse(personalIncomeController.text),
        ),
        familyDetails: FamilyDetails(
          fatherAlive: fatherAliveController.value,
          motherAlive: motherAliveController.value,
          brothers: int.tryParse(brothersController.text),
          marriedBrothers: int.tryParse(marriedBrothersController.text),
          sisters: int.tryParse(sistersController.text),
          marriedSister: int.tryParse(marriedSisterController.text),
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
          mangalDosh: mangalDoshController.value,
          expectedSubCaste: expectedSubCasteController.text,
          expectedHeight: expectedHeightController.text,
          minAgeGap: int.tryParse(minAgeGapController.text),
          expectedEducation: expectedEducationController.text,
          expectedOccupation: expectedOccupationController.text,
          incomePerMonth: double.tryParse(incomePerMonthController.text),
          expectedMaritalStatus: expectedMaritalStatusController.text,
        ),
        profilePhotos: ProfilePhotos(
          profilePicUrl: profilePicUrlController.text,
          album: albumController.text.split(',').map((e) => e.trim()).toList(),
        ),
      );

      try {
        if (isEditing.value) {
          await _apiService.put('users/${_editingUser!.id}', body: user.toJson());
        } else {
          await _apiService.post('users', body: user.toJson());
        }

        Get.back(result: true);
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
    firstNameController.dispose();
    middleNameController.dispose();
    lastNameController.dispose();
    genderController.dispose();
    birthdateController.dispose();
    subCasteController.dispose();
    emailController.dispose();
    mobileController.dispose();
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
    profilePicUrlController.dispose();
    albumController.dispose();
    super.onClose();
  }
}
