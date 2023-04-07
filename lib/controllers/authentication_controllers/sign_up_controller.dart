import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/route_generator.dart';

class SignUpController extends GetxController {
  RxBool isObscure = false.obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void changeVisibility() {
    isObscure.value = !isObscure.value;
  }

  void redirectTo() {
    Get.offNamed(RouteGenerator.signinscreen);
  }
}
