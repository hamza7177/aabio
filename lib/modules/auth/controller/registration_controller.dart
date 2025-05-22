import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void register() {
    // Add registration logic here
    print("Name: ${nameController.text}, Email: ${emailController.text}, "
        "Password: ${passwordController.text}, Confirm: ${confirmPasswordController.text}");
  }
}