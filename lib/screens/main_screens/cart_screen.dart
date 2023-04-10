import 'package:fashion_bazaar/widgets/TextView.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../controllers/main_screens_controllers/cart_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/appBar.dart';
import '../../widgets/image_view.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (_) {
        return Scaffold(
          appBar: Appbar(StringUtils.lblMyCart, ImageUtils.iconBack, true, () {
            Get.back();
          }, [], false, true),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ImageView(
                  ImageUtils.imageCartEmpty,
                  ImageType.asset,
                  height: 93.62,
                  width: 99.96,
                ),
              ),
              const SizedBox(height: 16),
              const TextView(
                StringUtils.lblProblem,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              const SizedBox(height: 16),
              const TextView(
                StringUtils.lblEmptyCartMsg,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                textColor: AppColors.primaryHint,
              )
            ],
          ),
        );
      },
    );
  }
}
