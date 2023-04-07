import 'package:fashion_bazaar/utils/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  RxBool isObscure1 = false.obs;
  RxBool isObscure2 = false.obs;

  void redirectTo() => Get.offNamed(RouteGenerator.resetpasswordscreen);
  void changeVisibility() => isObscure1.value = !isObscure1.value;
  void changeVisibility1() => isObscure2.value = !isObscure2.value;
  void redirectToLogin() => Get.offNamed(RouteGenerator.signinscreen);
}
