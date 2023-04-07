import 'package:fashion_bazaar/utils/route_generator.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class ForgotPasswordController extends GetxController{
  TextEditingController emailController = TextEditingController();

  void redirectTo() {
    Get.offNamed(RouteGenerator.signinscreen);
  }

  void redirectToResetPassword() {
    Get.toNamed(RouteGenerator.resetpasswordscreen);
  }
}