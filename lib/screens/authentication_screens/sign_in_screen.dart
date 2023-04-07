import 'package:fashion_bazaar/utils/string_utils.dart';
import 'package:fashion_bazaar/widgets/TextView.dart';
import 'package:fashion_bazaar/widgets/raised_button.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../controllers/authentication_controllers/sign_in_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../widgets/edit_text.dart';
import '../../widgets/image_view.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
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
                        StringUtils.lblSignIn,
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
                          hint: StringUtils.hintSignInPassword,
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
                      GestureDetector(
                        onTap: (){_.redirectToForgotPassword();},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            TextView(
                              StringUtils.lblForgotPassword,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              textColor: AppColors.primaryFonts,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      AppRaisedButton(
                        title: StringUtils.lblSignIn,
                        titleSize: 18,
                        onPressed: (){
                          _.redirectToHome();
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
                      const SizedBox(height: 59),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: ImageView(
                                    ImageUtils.iconGoogle, ImageType.asset,
                                    height: 25, width: 25),
                                label: const TextView(
                                  StringUtils.lblGoogleSingIn,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                                style: ElevatedButton.styleFrom(
                                    surfaceTintColor:Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6)),
                                    backgroundColor: AppColors.grey,
                                    elevation: 0,
                                    foregroundColor: AppColors.primaryFonts),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 26,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: ImageView(
                                  ImageUtils.iconFacebook,
                                  ImageType.asset,
                                  height: 25,
                                  width: 25,
                                ),
                                label: const TextView(
                                  StringUtils.lblFacebookSingIn,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                                style: ElevatedButton.styleFrom(animationDuration: const Duration(seconds: 0),

                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6)),
                                    backgroundColor: AppColors.grey,
                                    elevation: 0,
                                    foregroundColor: AppColors.primaryFonts),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: (){
                          _.redirectTo();
                        },
                        child: Center(
                          child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(color: Color(0xFF222222)),
                                  text: StringUtils.lblDontHaveAccount,
                                  children: <TextSpan>[
                                TextSpan(
                                    text: StringUtils.lblSignUp,
                                    style:
                                        TextStyle(color: AppColors.primaryFonts,fontWeight: FontWeight.w600))
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
