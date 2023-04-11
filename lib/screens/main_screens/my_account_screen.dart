import 'package:fashion_bazaar/utils/string_utils.dart';
import 'package:fashion_bazaar/widgets/TextView.dart';
import 'package:fashion_bazaar/widgets/image_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../controllers/main_screens_controllers/my_account_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/route_generator.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAccountController>(
      init: MyAccountController(),
      builder: (_) {
        return Scaffold(
            body: SafeArea(
          child: SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(
                    height: 187,
                    width: Get.width,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Card(
                          elevation: 1,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 22.0),
                                    child: ImageView(
                                      ImageUtils.primaryLogo,
                                      ImageType.asset,
                                      height: 40,
                                      width: 88,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 22.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        const TextView(
                                          'Ady Rawnwen',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          textColor: AppColors.bluePrimary,
                                        ),
                                        TextView(
                                          'adyr.awnwen@gmail.com',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          textColor: const Color(0xff222222)
                                              .withOpacity(.70),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 16),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 80,
                                          child: Stack(
                                            children: [
                                              ImageView(
                                                ImageUtils.imageProfile,
                                                ImageType.asset,
                                                height: 76,
                                                width: 76,
                                              ),
                                              Positioned(
                                                  left: 50,
                                                  top: 55,
                                                  child: ImageView(
                                                    ImageUtils.imageCamera,
                                                    ImageType.asset,
                                                    height: 22,
                                                    width: 22,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 22.0),
                 child: ListView(
                   shrinkWrap: true,
                   controller: _.cntrl,
                   children: [
                   GestureDetector(
                     onTap: (){
                       _.redirect_to(RouteGenerator.editprofilescreen);
                     },
                     child: ListTile(
                       leading: ImageView(
                         ImageUtils.imagePerson,
                         ImageType.asset,
                         height: 20,
                         width: 20,
                       ),
                       title: const TextView(
                         StringUtils.lblEditAccount,
                         fontSize: 16,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                   ),
                   const Divider(),
                   GestureDetector(
                     onTap: (){
                       _.redirect_to(RouteGenerator.changepasswordscreen);
                     },
                     child: ListTile(
                       leading: ImageView(
                         ImageUtils.imagePassword,
                         ImageType.asset,
                         height: 20,
                         width: 20,
                       ),
                       title: const TextView(
                         StringUtils.lblChangePassword,
                         fontSize: 16,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                   ),
                   const Divider(),
                   ListTile(
                     leading: ImageView(
                       ImageUtils.imageAddressBook,
                       ImageType.asset,
                       height: 20,
                       width: 20,
                     ),
                     title: const TextView(
                       StringUtils.lblAddressBook,
                       fontSize: 16,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                   const Divider(),
                   ListTile(
                     leading: ImageView(
                       ImageUtils.imageOrderHistory,
                       ImageType.asset,
                       height: 20,
                       width: 20,
                     ),
                     title: const TextView(
                       StringUtils.lblOrderHistory,
                       fontSize: 16,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                   const Divider(),
                   ListTile(
                     leading: ImageView(
                       ImageUtils.imageContactUs,
                       ImageType.asset,
                       height: 20,
                       width: 20,
                     ),
                     title: const TextView(
                       StringUtils.lblContactUs,
                       fontSize: 16,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                   const Divider(),
                   GestureDetector(
                     onTap: (){
                       _.redirect_to(RouteGenerator.termsandconditionsscreen);
                     },
                     child: ListTile(
                       leading: ImageView(
                         ImageUtils.imageAboutUs,
                         ImageType.asset,
                         height: 20,
                         width: 20,
                       ),
                       title: const TextView(
                         StringUtils.lblAboutUs,
                         fontSize: 16,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                   ),
                   const Divider(),
                   ListTile(
                     leading: ImageView(
                       ImageUtils.imageTermsAndConditions,
                       ImageType.asset,
                       height: 20,
                       width: 20,
                     ),
                     title: const TextView(
                       StringUtils.lblTermsAndConditions,
                       fontSize: 16,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                   const Divider(),
                   ListTile(
                     leading: ImageView(
                       ImageUtils.imageLogout,
                       ImageType.asset,
                       height: 20,
                       width: 20,
                     ),
                     title: const TextView(
                       StringUtils.lblLogout,
                       fontSize: 16,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                   const Divider(),
                 ],),
               )
              ],
            ),
          ),
        ));
      },
    );
  }
}
