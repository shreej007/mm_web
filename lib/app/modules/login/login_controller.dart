import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoading = false.obs;

  void login() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;

      // Simulate a network call
      await Future.delayed(const Duration(seconds: 1));

      if (emailController.text == 'admin@gmail.com' &&
          passwordController.text == '1234') {
        Get.offNamed(Routes.root);
      } else {
        Get.snackbar(
          'Login Failed',
          'Invalid email or password.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withAlpha(204),
          colorText: Colors.white,
        );
      }
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
