import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/api_service.dart'; // Import the ApiService
import '../../data/api_urls.dart';
import '../../routes/app_pages.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Instantiate the ApiService.
  // For larger apps, consider dependency injection with `Get.put()` and `Get.find()`.
  final ApiService _apiService = ApiService();

  // An observable to manage the loading state, which can be used to show a loading spinner in the UI.
  var isLoading = false.obs;

  // The login method now communicates with the backend.
  void login() async {
    // Validate the form fields before proceeding.
    if (formKey.currentState!.validate()) {
      // Set loading to true to show a progress indicator.
      isLoading.value = true;
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
        barrierDismissible: false, // User cannot dismiss the dialog by tapping outside.
      );

      try {
        // Prepare the data to be sent to the API.
        final loginData = {
          'email': emailController.text,
          'password': passwordController.text,
        };

        // Make the POST request to the login endpoint.
        final response = await _apiService.post(ApiUrls.login, body: loginData);

        // --- Login Success ---

        // You can now handle the successful login response.
        // Typically, the response contains a token that should be saved for subsequent API calls.
        // For now, we'll just print it and navigate to the home screen.
        debugPrint('Login successful. Token: ${response['token']}');
        
        // Close the loading dialog.
        Get.back();
        
        // Navigate to the root/home screen, replacing the login screen in the stack.
        Get.offNamed(Routes.root);

      } on ApiException catch (e) {
        // --- Handle API-specific Errors ---
        Get.back(); // Close the loading dialog.
        Get.snackbar(
          'Login Failed',
          e.message, // Display the error message from the API.
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withAlpha(204),
          colorText: Colors.white,
        );
      } catch (e) {
        // --- Handle Generic Errors (e.g., no network) ---
        Get.back(); // Close the loading dialog.
        Get.snackbar(
          'Error',
          'An unexpected error occurred. Please check your connection and try again.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withAlpha(204),
          colorText: Colors.white,
        );
      } finally {
        // Ensure the loading state is reset, even if an error occurs.
        isLoading.value = false;
      }
    }
  }

  @override
  void onClose() {
    // Dispose controllers to free up resources when the controller is removed from memory.
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
