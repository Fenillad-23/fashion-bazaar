import 'package:get/get.dart';

import '../../screens/main_screens/home_screen.dart';
class BottomBarController extends GetxController{
  RxInt selectedIndex =0.obs;
  List screens = [const HomeScreen(),const HomeScreen(),const HomeScreen(),const HomeScreen(),const HomeScreen()];
  void changeScreen(int index) => selectedIndex.value = index;
}