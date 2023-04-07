import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/authentication_controllers/sign_up_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/TextView.dart';
import '../../widgets/edit_text.dart';
import '../../widgets/image_view.dart';
import '../../widgets/raised_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        init: SignUpController(),
        builder: (_) {
          return Scaffold(
              body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageView(
                      ImageUtils.primaryLogo,
                      ImageType.asset,
                      height: 62,
                      width: 100,
                    ),
                    const SizedBox(height: 56),
                    const TextView(
                      StringUtils.lblSignUp,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      textColor: AppColors.primaryFonts,
                    ),
                    const SizedBox(height: 6),
                    const TextView(
                      StringUtils.lblSignUpMsg,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      textColor: AppColors.primaryHint,
                    ),
                    const SizedBox(height: 40),
                    const TextView(
                      StringUtils.lblName,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      textColor: AppColors.primaryFonts,
                    ),
                    const SizedBox(height: 10),
                    EditText(
                      controller: _.nameController,
                      isBorderEnabled: true,
                      borderRadius: 8,
                      filled: true,
                      fillColor: AppColors.grey,
                      hint: StringUtils.hintName,
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextView(
                      StringUtils.lblSignInEmail,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      textColor: AppColors.primaryFonts,
                    ),
                    const SizedBox(height: 10),
                    EditText(
                      controller: _.emailController,
                      isBorderEnabled: true,
                      borderRadius: 8,
                      filled: true,
                      fillColor: AppColors.grey,
                      hint: StringUtils.hintSignInEmail,
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    const TextView(
                      StringUtils.lblMobile,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      textColor: AppColors.primaryFonts,
                    ),
                    const SizedBox(height: 10),
                    EditText(
                      controller: _.mobileController,
                      isBorderEnabled: true,
                      borderRadius: 8,
                      filled: true,
                      fillColor: AppColors.grey,
                      hint: StringUtils.hintMobile,
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    const SizedBox(height: 20),
                    const TextView(
                      StringUtils.lblSignInPassword,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      textColor: AppColors.primaryFonts,
                    ),
                    const SizedBox(height: 10),
                    Obx(
                      () => EditText(
                        obscureText: _.isObscure.value,
                        controller: _.passwordController,
                        isBorderEnabled: true,
                        borderRadius: 8,
                        filled: true,
                        fillColor: AppColors.grey,
                        hint: StringUtils.lblCreatePassword,
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: GestureDetector(
                              onTap: () {
                                _.changeVisibility();
                              },
                              child: ImageView(
                                  _.isObscure.value
                                      ? ImageUtils.iconEyeClose
                                      : ImageUtils.iconEyeOpen,
                                  ImageType.asset)),
                        ),
                        suffixIconConstraints:
                            const BoxConstraints(minHeight: 25, maxWidth: 25),
                      ),
                    ),
                    const SizedBox(height: 11),
                    const SizedBox(height: 40),
                    AppRaisedButton(
                      title: StringUtils.lblSignIn,
                      titleSize: 18,
                      titleFontWeight: FontWeight.w700,
                      buttoncolor: AppColors.bluePrimary,
                      borderRadius: 24,
                    ),
                    const SizedBox(height: 40),
                    GestureDetector(
                      onTap: () {
                        _.redirectTo();
                      },
                      child: Center(
                        child: RichText(
                            text: const TextSpan(
                                style: TextStyle(color: Color(0xFF222222)),
                                text: StringUtils.lblAlreadyHaveAccount,
                                children: <TextSpan>[
                              TextSpan(
                                  text: StringUtils.lblSignIn,
                                  style:
                                      TextStyle(color: AppColors.primaryFonts))
                            ])),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ));
        });
  }
}
