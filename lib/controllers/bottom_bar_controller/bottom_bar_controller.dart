import 'package:get/get.dart';

import '../../screens/main_screens/cart_screen.dart';
import '../../screens/main_screens/category_screens.dart';
import '../../screens/main_screens/home_screen.dart';
import '../../screens/main_screens/my_account_screen.dart';
import '../../screens/main_screens/my_offer_screen.dart';

class BottomBarController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List screens = [
    const HomeScreen(),
    const CategoryScreen(),
    const CarScreen(),
    const MyOfferScreen(),
    const MyAccountScreen()
  ];
  void changeScreen(int index) => selectedIndex.value = index;
}
