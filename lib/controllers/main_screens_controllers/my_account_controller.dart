import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class MyAccountController extends GetxController{
  ScrollController cntrl = ScrollController();

  void redirect_to(String page) {
    Get.toNamed(page);
  }
}