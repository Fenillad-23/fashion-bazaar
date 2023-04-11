import 'package:fashion_bazaar/widgets/raised_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/main_screens_controllers/edit_profile_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/TextView.dart';
import '../../widgets/appBar.dart';
import '../../widgets/edit_text.dart';
import '../../widgets/image_view.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
        init: EditProfileController(),
        builder: (_) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: Appbar(
                StringUtils.lblEditAccount, ImageUtils.iconBack, true, () {
              Get.back();
            }, [], false, true),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 22),
                    Column(
                      children: [
                        ImageView(
                          ImageUtils.imageProfile,
                          ImageType.asset,
                          height: 76,
                          width: 76,
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextView(
                          'Ady Rawnwen',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          textColor: AppColors.bluePrimary,
                        ),
                        const SizedBox(
                          height: 4.5,
                        ),
                        Row(
                          children: [
                            TextView(
                              'adyr.awnwen@gmail.com',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textColor:
                                  const Color(0xff222222).withOpacity(.70),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            ImageView(
                              ImageUtils.imageEdit,
                              ImageType.asset,
                              height: 19.93,
                              width: 19.93,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextView(
                        StringUtils.lblName,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      EditText(
                        borderRadius: 8,
                        hint: StringUtils.hintName,
                        isBorderEnabled: true,
                        filled: true,
                        fillColor: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextView(
                        StringUtils.lblMobile,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      EditText(
                        borderRadius: 8,
                        hint: StringUtils.hintMobile,
                        isBorderEnabled: true,
                        filled: true,
                        fillColor: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextView(
                        StringUtils.lblSignInEmail,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      EditText(
                        borderRadius: 8,
                        hint: StringUtils.hintSignInEmail,
                        isBorderEnabled: true,
                        filled: true,
                        fillColor: AppColors.grey,
                      ),
                      const SizedBox(height: 80),
                      AppRaisedButton(
                        title: StringUtils.lblSave,
                        buttoncolor: AppColors.bluePrimary,
                        borderRadius: 24,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
