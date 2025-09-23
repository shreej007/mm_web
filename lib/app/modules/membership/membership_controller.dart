import 'package:get/get.dart';
import 'package:myapp/app/data/api_service.dart';
import 'package:myapp/app/data/models/membership_model.dart' as membership_model;
import 'package:myapp/app/data/models/user_model.dart';

class MembershipController extends GetxController {
  final ApiService _apiService = ApiService();
  final user = Rx<UserModel?>(null);

  var isLoading = true.obs;
  var memberships = <membership_model.Membership>[].obs;

  @override
  void onInit() {
    super.onInit();
    user.value = Get.arguments as UserModel?;
    if (user.value != null) {
      fetchMembershipsForUser(user.value!.id!);
    }
  }

  void fetchMembershipsForUser(String userId) async {
    try {
      isLoading(true);
      final response = await _apiService.get('users/$userId/memberships');
      if (response is List) {
        memberships.value = response.map((json) => membership_model.Membership.fromJson(json)).toList();
      } else {
        memberships.value = [];
      }
    } catch (e) {
      Get.snackbar('Error', 'Could not fetch memberships.');
    } finally {
      isLoading(false);
    }
  }
}
