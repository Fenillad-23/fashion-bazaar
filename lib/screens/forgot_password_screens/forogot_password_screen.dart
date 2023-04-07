import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/forgot_password_controller/forgot_password_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/TextView.dart';
import '../../widgets/edit_text.dart';
import '../../widgets/image_view.dart';
import '../../widgets/raised_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
        init: ForgotPasswordController(),
        builder: (_) {
          return Scaffold(
            body: SafeArea(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:24.0),
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

                  const SizedBox(height: 48),
                  AppRaisedButton(
                    title: StringUtils.lblSignIn,
                    titleSize: 18,
                    titleFontWeight: FontWeight.w700,
                    buttoncolor: AppColors.bluePrimary,
                    borderRadius: 24,
                    onPressed: (){
                      _.redirectToResetPassword();
                    },
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
                    onTap: (){
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
                                    style:
                                    TextStyle(color: AppColors.primaryFonts,fontWeight: FontWeight.w600))
                              ])),
                    ),
                  )
                ],
              ),
            ),),
          );
        });
  }
}
