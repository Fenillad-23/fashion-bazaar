import 'package:fashion_bazaar/widgets/image_view.dart';
import 'package:fashion_bazaar/widgets/raised_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/main_screens_controllers/change_password_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/TextView.dart';
import '../../widgets/appBar.dart';
import '../../widgets/edit_text.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangePasswordController>(
        init: ChangePasswordController(),
        builder: (_) {
          return Scaffold(
            appBar: Appbar(
                StringUtils.lblEditAccount, ImageUtils.iconBack, true, () {
              Get.back();
            }, [], false, true),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 22,
                    ),
                    const TextView(
                      StringUtils.lblCurrentPassword,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    EditText(
                      borderRadius: 8,
                      obscureText: _.obscure.value,
                      hint: StringUtils.hintCurrentPassword,
                      isBorderEnabled: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: GestureDetector(
                            onTap: () {
                              _.alterVisibility();
                            },
                            child: ImageView(
                                _.obscure.value
                                    ? ImageUtils.iconEyeOpen
                                    : ImageUtils.iconEyeClose,
                                ImageType.asset)),
                      ),
                      suffixIconConstraints: const BoxConstraints(
                          maxWidth: 40.01, maxHeight: 15.57),
                      filled: true,
                      fillColor: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextView(
                      StringUtils.lblNewPassword,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    EditText(
                      borderRadius: 8,
                      hint: StringUtils.hintNewPassword,
                      isBorderEnabled: true,
                      obscureText: _.obscure1.value,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: GestureDetector(
                            onTap: () {
                              _.alterVisibility1();
                            },
                            child: ImageView(
                                _.obscure1.value
                                    ? ImageUtils.iconEyeOpen
                                    : ImageUtils.iconEyeClose,
                                ImageType.asset)),
                      ),
                      suffixIconConstraints: const BoxConstraints(
                          maxWidth: 40.01, maxHeight: 15.57),
                      filled: true,
                      fillColor: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextView(
                      StringUtils.lblConfirmPassword,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    EditText(
                      borderRadius: 8,
                      hint: StringUtils.hintConfirmPassword,
                      isBorderEnabled: true,
                      obscureText: _.obscure2.value,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: GestureDetector(
                          onTap: () {
                            _.alterVisibility2();
                          },
                          child: ImageView(
                              _.obscure2.value
                                  ? ImageUtils.iconEyeOpen
                                  : ImageUtils.iconEyeClose,
                              ImageType.asset),
                        ),
                      ),
                      suffixIconConstraints: const BoxConstraints(
                          maxWidth: 40.01, maxHeight: 15.57),
                      filled: true,
                      fillColor: AppColors.grey,
                    ),
                    const SizedBox(
                      height: 188,
                    ),
                    AppRaisedButton(
                      title: StringUtils.lblUpdate,
                      buttoncolor: AppColors.bluePrimary,
                      borderRadius: 24,
                      titleFontWeight: FontWeight.w700,
                      titleSize: 18,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
