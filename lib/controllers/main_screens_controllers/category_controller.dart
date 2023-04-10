import 'package:fashion_bazaar/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  ScrollController cntrl = ScrollController();
  RxBool isVisibleMenTopCategory = false.obs;
  RxBool isVisibleMenAllCategory = false.obs;
  List menTopWear = [
    {'img': ImageUtils.menJeans, 'label': 'Jeans'},
    {'img': ImageUtils.menDenim, 'label': 'Denim'},
    {'img': ImageUtils.menTshirt, 'label': 'T Shirts'},
    {'img': ImageUtils.menKurtas, 'label': 'Kurtas'},
    {'img': ImageUtils.menCasual, 'label': 'Casual'}
  ];
  void makeMenTopVisible() {
    isVisibleMenTopCategory.value = !isVisibleMenTopCategory.value;
  }
  void makeMenAllVisible() {
    isVisibleMenAllCategory.value = !isVisibleMenAllCategory.value;
  }
}
