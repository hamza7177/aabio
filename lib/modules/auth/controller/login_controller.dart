// Login Controller
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    // Add login logic here
    print("Email: ${emailController.text}, Password: ${passwordController.text}");
  }
}