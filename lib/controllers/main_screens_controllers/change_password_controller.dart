import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class ChangePasswordController extends GetxController{
  TextEditingController currentPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  RxBool obscure=true.obs,obscure1= true.obs,obscure2 = true.obs;

   alterVisibility() => obscure.value = !obscure.value;
   alterVisibility1() => obscure1.value = !obscure1.value;
   alterVisibility2() => obscure2.value = !obscure2.value;

}