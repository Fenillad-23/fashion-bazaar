import 'package:fashion_bazaar/utils/route_generator.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  RxBool isObscure = false.obs;

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  void changeVisibility() => isObscure.value = !isObscure.value;
  void redirectTo() => Get.offNamed(RouteGenerator.signupscreen);
  void redirectToForgotPassword() =>
      Get.toNamed(RouteGenerator.forgotpasswordsceen);
  void redirectToHome() => Get.offNamed(RouteGenerator.bottombarscreen);
}
