import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../controllers/forgot_password_controller/reset_password_contorller.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/TextView.dart';
import '../../widgets/edit_text.dart';
import '../../widgets/image_view.dart';
import '../../widgets/raised_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPasswordController>(
        init: ResetPasswordController(),
        builder: (_) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(
              physics:const NeverScrollableScrollPhysics(),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                        StringUtils.lblForgotPassword,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        textColor: AppColors.primaryFonts,
                      ),
                      const SizedBox(height: 6),
                      const TextView(
                        StringUtils.lblSignInMsg,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        textColor: AppColors.primaryHint,
                      ),
                      const SizedBox(height: 40),
                      const TextView(
                        StringUtils.lblNewPassword,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        textColor: AppColors.primaryFonts,
                      ),
                      const SizedBox(height: 10),
                      Obx(
                        () => EditText(
                          obscureText: _.isObscure2.value,
                          controller: _.newPassword,
                          isBorderEnabled: true,
                          borderRadius: 8,
                          filled: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: GestureDetector(
                                onTap: () {
                                  _.changeVisibility();
                                },
                                child: ImageView(
                                    _.isObscure1.value
                                        ? ImageUtils.iconEyeClose
                                        : ImageUtils.iconEyeOpen,
                                    ImageType.asset)),
                          ),
                          suffixIconConstraints:
                              const BoxConstraints(minHeight: 25, maxWidth: 25),
                          fillColor: AppColors.grey,
                          hint: StringUtils.lblConfirmPassword,
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const TextView(
                        StringUtils.lblConfirmPassword,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        textColor: AppColors.primaryFonts,
                      ),
                      const SizedBox(height: 10),
                      Obx(
                        () => EditText(
                          obscureText: _.isObscure2.value,
                          controller: _.confirmPassword,
                          isBorderEnabled: true,
                          borderRadius: 8,
                          filled: true,
                          fillColor: AppColors.grey,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: GestureDetector(
                                onTap: () {
                                  _.changeVisibility1();
                                },
                                child: ImageView(
                                    _.isObscure2.value
                                        ? ImageUtils.iconEyeClose
                                        : ImageUtils.iconEyeOpen,
                                    ImageType.asset)),
                          ),
                          suffixIconConstraints:
                              const BoxConstraints(minHeight: 25, maxWidth: 25),
                          hint: StringUtils.hintConfirmPassword,
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 48),
                      AppRaisedButton(
                        title: StringUtils.lblSave,
                        titleSize: 18,
                        onPressed: (){
                          _.redirectToLogin();
                        },
                        titleFontWeight: FontWeight.w700,
                        buttoncolor: AppColors.bluePrimary,
                        borderRadius: 24,
                      ),
                      const SizedBox(height: 58),
                      Row(
                        children: const [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            endIndent: 28,
                          )),
                          TextView(
                            StringUtils.lblOr,
                            fontWeight: FontWeight.w700,
                            textColor: AppColors.grey,
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            indent: 23,
                          ))
                        ],
                      ),
                      const SizedBox(height: 58),
                      GestureDetector(
                        onTap: () {
                          _.redirectTo();
                        },
                        child: Center(
                          child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(color: Color(0xFF222222)),
                                  text: StringUtils.lblRemeberedPassword,
                                  children: <TextSpan>[
                                TextSpan(
                                    text: StringUtils.lblSignIn,
                                    style: TextStyle(
                                        color: AppColors.primaryFonts,
                                        fontWeight: FontWeight.w600))
                              ])),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
