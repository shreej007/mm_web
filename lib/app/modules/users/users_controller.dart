
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/dummy_data/dummy_users.dart';
import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/routes/app_pages.dart';

class UsersController extends GetxController {
  // Master list of users
  final _users = <UserModel>[].obs;
  // List of users to display after filtering
  final filteredUsers = <UserModel>[].obs;

  // Filter state variables
  final genderFilter = ''.obs;
  final subCasteFilter = ''.obs;
  final occupationFilter = ''.obs;
  final searchQuery = ''.obs;

  // Options for filter dropdowns
  final subCasteOptions = <String>['All'].obs;
  final occupationOptions = <String>['All'].obs;

  // Controller for the search text field
  final searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    _users.assignAll(dummyUsers);

    // Populate dropdown options with unique values from the user list
    subCasteOptions.addAll(_users.map((u) => u.basicInfo.subCaste).toSet().toList());
    occupationOptions.addAll(_users.map((u) => u.careerDetails.occupationType).toSet().toList());

    // Use 'everAll' to automatically apply filters whenever a filter state changes
    everAll([searchQuery, genderFilter, subCasteFilter, occupationFilter], (_) => _applyFilters());

    // Initial application of filters
    _applyFilters();
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  // Public methods to update filter states from the UI
  void setSearchQuery(String query) => searchQuery.value = query.toLowerCase();
  void setGenderFilter(String? gender) => genderFilter.value = gender ?? '';
  void setSubCasteFilter(String? subCaste) => subCasteFilter.value = (subCaste == 'All' || subCaste == null) ? '' : subCaste;
  void setOccupationFilter(String? occupation) => occupationFilter.value = (occupation == 'All' || occupation == null) ? '' : occupation;

  void _applyFilters() {
    List<UserModel> tempUsers = _users;

    // Filter by search query (name, email)
    if (searchQuery.value.isNotEmpty) {
      tempUsers = tempUsers
          .where((user) =>
              user.basicInfo.firstName.toLowerCase().contains(searchQuery.value) ||
              user.basicInfo.lastName.toLowerCase().contains(searchQuery.value) ||
              user.basicInfo.email.toLowerCase().contains(searchQuery.value))
          .toList();
    }

    // Filter by gender
    if (genderFilter.value.isNotEmpty) {
      tempUsers = tempUsers
          .where((user) => user.basicInfo.gender.toLowerCase() == genderFilter.value.toLowerCase())
          .toList();
    }

    // Filter by sub-caste
    if (subCasteFilter.value.isNotEmpty) {
      tempUsers = tempUsers
          .where((user) => user.basicInfo.subCaste == subCasteFilter.value)
          .toList();
    }

    // Filter by occupation
    if (occupationFilter.value.isNotEmpty) {
      tempUsers = tempUsers
          .where((user) => user.careerDetails.occupationType == occupationFilter.value)
          .toList();
    }

    filteredUsers.assignAll(tempUsers);
  }

  void clearFilters() {
    searchController.clear();
    setSearchQuery('');
    setGenderFilter('');
    setSubCasteFilter('All');
    setOccupationFilter('All');
  }

  void goToAddUser() {
    Get.toNamed(Routes.addUser);
  }

  void goToUserDetails(UserModel user) {
    Get.toNamed(Routes.userDetails, arguments: user);
  }

  void goToEditUser(UserModel user) {
    Get.toNamed(Routes.addUser, arguments: user);
  }

  void deleteUser(UserModel user) {
    _users.remove(user);
    _applyFilters(); // Re-apply filters to refresh the list
  }
}
