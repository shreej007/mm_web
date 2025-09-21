import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/api_service.dart';
import 'package:myapp/app/data/api_urls.dart';
import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/routes/app_pages.dart';

class UsersController extends GetxController {
  final ApiService _apiService = ApiService();

  // --- State Management ---
  var isLoading = true.obs;
  var errorMessage = ''.obs;
  final _users = <UserModel>[].obs;
  final filteredUsers = <UserModel>[].obs;

  // --- Filter and Search State ---
  final genderFilter = ''.obs;
  final subCasteFilter = ''.obs;
  final occupationFilter = ''.obs;
  final searchQuery = ''.obs;
  final searchController = TextEditingController();

  // --- Dropdown Options ---
  final subCasteOptions = <String>['All'].obs;
  final occupationOptions = <String>['All'].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
    everAll([searchQuery, genderFilter, subCasteFilter, occupationFilter], (_) => _applyFilters());
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  Future<void> fetchUsers() async {
    try {
      isLoading(true);
      errorMessage('');
      final response = await _apiService.get(ApiUrls.users);
      if (response is List) {
        final users = response.map((json) => UserModel.fromJson(json)).toList();
        _users.assignAll(users);
        _populateFilterOptions();
      } else {
        throw 'Invalid data format from server';
      }
    } catch (e) {
      errorMessage.value = e is ApiException ? e.message : e.toString();
      _users.assignAll([]);
    } finally {
      _applyFilters();
      isLoading(false);
    }
  }

  void _populateFilterOptions() {
    subCasteOptions.assignAll(['All', ..._users.map((u) => u.personalInfo?.gender ?? 'N/A').toSet()]);
    occupationOptions.assignAll(['All', ..._users.map((u) => u.membership?.planId ?? 'N/A').toSet()]);
  }

  void _applyFilters() {
    List<UserModel> tempUsers = List<UserModel>.from(_users);

    if (searchQuery.value.isNotEmpty) {
      tempUsers = tempUsers.where((user) =>
          (user.personalInfo?.firstName.toLowerCase().contains(searchQuery.value) ?? false) ||
          (user.personalInfo?.lastName.toLowerCase().contains(searchQuery.value) ?? false) ||
          (user.contactInfo?.email.toLowerCase().contains(searchQuery.value) ?? false)).toList();
    }
    if (genderFilter.value.isNotEmpty) {
      tempUsers = tempUsers.where((user) => user.personalInfo?.gender.toLowerCase() == genderFilter.value.toLowerCase()).toList();
    }
    if (subCasteFilter.value.isNotEmpty) {
      tempUsers = tempUsers.where((user) => user.personalInfo?.gender == subCasteFilter.value).toList();
    }
    if (occupationFilter.value.isNotEmpty) {
      tempUsers = tempUsers.where((user) => user.membership?.planId == occupationFilter.value).toList();
    }

    filteredUsers.assignAll(tempUsers);
  }

  void setSearchQuery(String query) => searchQuery.value = query.toLowerCase();
  void setGenderFilter(String? gender) => genderFilter.value = gender ?? '';
  void setSubCasteFilter(String? subCaste) => subCasteFilter.value = (subCaste == 'All' || subCaste == null) ? '' : subCaste;
  void setOccupationFilter(String? occupation) => occupationFilter.value = (occupation == 'All' || occupation == null) ? '' : occupation;

  void clearFilters() {
    searchController.clear();
    setSearchQuery('');
    setGenderFilter('');
    setSubCasteFilter('All');
    setOccupationFilter('All');
    _applyFilters();
  }

  Future<void> goToAddUser() async {
    final result = await Get.toNamed(Routes.addUser);
    if (result == true) {
      fetchUsers();
    }
  }

  void goToUserDetails(UserModel user) {
    Get.toNamed(Routes.userDetails, arguments: user);
  }

  Future<void> goToEditUser(UserModel user) async {
    final result = await Get.toNamed(Routes.addUser, arguments: user);
    if (result == true) {
      fetchUsers();
    }
  }

  void inactivateUser(UserModel user) async {
    if (user.id == null) {
      Get.snackbar('Error', 'User ID is missing.', backgroundColor: Colors.red);
      return;
    }

    Get.dialog(
      AlertDialog(
        title: const Text('Inactivate User'),
        content: Text('Are you sure you want to inactivate ${user.personalInfo?.firstName} ${user.personalInfo?.lastName}?'),
        actions: [
          TextButton(onPressed: () => Get.back(), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () async {
              Get.back(); // Close the dialog
              isLoading(true);
              try {
                await _apiService.patch(ApiUrls.inactivateUser(user.id!), body: {'reason': 'Inactivated by admin'});
                // Optionally, refresh the user list to reflect the change
                fetchUsers();
                Get.snackbar('Success', 'User inactivated successfully.');
              } on ApiException catch (e) {
                Get.snackbar('API Error', e.message, backgroundColor: Colors.red);
              } catch (e) {
                Get.snackbar('Error', 'An unexpected error occurred: $e', backgroundColor: Colors.red);
              } finally {
                isLoading(false);
              }
            },
            child: const Text('Inactivate'),
          ),
        ],
      ),
    );
  }

  void goToMembership(UserModel user) {
    Get.toNamed(Routes.membership, arguments: user);
  }
}
