
import 'package:get/get.dart';
import 'package:myapp/app/data/dummy_data/dummy_users.dart';
import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/routes/app_pages.dart';

class UsersController extends GetxController {
  final _users = <UserModel>[].obs;

  late RxList<UserModel> filteredUsers;

  @override
  void onInit() {
    super.onInit();
    // Initialize with dummy data
    _users.assignAll(dummyUsers);
    filteredUsers = _users;
  }

  void filterUsers(String query) {
    if (query.isEmpty) {
      filteredUsers.value = _users;
    } else {
      filteredUsers.value = _users
          .where((user) =>
              user.basicInfo.firstName
                  .toLowerCase()
                  .contains(query.toLowerCase()) ||
              user.basicInfo.lastName
                  .toLowerCase()
                  .contains(query.toLowerCase()) ||
              user.basicInfo.email.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
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
    filterUsers(''); // Refresh the list
  }
}
