import 'package:fashion_bazaar/utils/color_utils.dart';
import 'package:fashion_bazaar/widgets/image_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../controllers/bottom_bar_controller/bottom_bar_controller.dart';
import '../../utils/image_utils.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
        init: BottomBarController(),
        builder: (_) {
          return Obx(
            () => Scaffold(
              body: _.screens.elementAt(_.selectedIndex.value),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: _.selectedIndex.value,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                unselectedItemColor: AppColors.primaryHint,
                selectedItemColor: AppColors.primaryFonts,
                selectedLabelStyle: const TextStyle(
                    color: AppColors.bluePrimary,
                    fontSize: 11,
                    fontWeight: FontWeight.w600),
                items: [
                  BottomNavigationBarItem(
                      icon: ImageView(
                        _.selectedIndex.value == 0
                            ? ImageUtils.iconHomeActive
                            : ImageUtils.iconHomeInactive,
                        ImageType.asset,
                        height: 19.99,
                        width: 20,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                    icon: ImageView(
                      _.selectedIndex.value == 1
                          ? ImageUtils.iconCategoryActive
                          : ImageUtils.iconCategoryInactive,
                      ImageType.asset,
                      height: 19.99,
                      width: 20,
                    ),
                    label: 'Category',
                  ),
                  BottomNavigationBarItem(
                      icon: ImageView(
                        _.selectedIndex.value == 2
                            ? ImageUtils.iconCartActive
                            : ImageUtils.iconCartInactive,
                        ImageType.asset,
                        height: 19.99,
                        width: 20,
                      ),
                      label: 'Cart'),
                  BottomNavigationBarItem(
                      icon: ImageView(
                        _.selectedIndex.value == 3
                            ? ImageUtils.iconDiscountActive
                            : ImageUtils.iconDicountInactive,
                        ImageType.asset,
                        height: 19.99,
                        width: 20,
                      ),
                      label: 'offers'),
                  BottomNavigationBarItem(
                      icon: ImageView(
                        _.selectedIndex.value == 4
                            ? ImageUtils.iconProfileActive
                            : ImageUtils.iconProfileInactive,
                        ImageType.asset,
                        height: 19.99,
                        width: 20,
                      ),
                      label: 'Account'),
                ],
                onTap: (value) {
                  _.changeScreen(value);
                },
              ),
            ),
          );
        });
  }
}
