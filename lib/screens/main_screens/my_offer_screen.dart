import 'package:fashion_bazaar/utils/color_utils.dart';
import 'package:fashion_bazaar/widgets/TextView.dart';
import 'package:fashion_bazaar/widgets/image_view.dart';
import 'package:fashion_bazaar/widgets/raised_button.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../controllers/main_screens_controllers/my_offer_controller.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/appBar.dart';

class MyOfferScreen extends StatelessWidget {
  const MyOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyOfferController>(
        init: MyOfferController(),
        builder: (_) {
          return Scaffold(
            appBar:
                Appbar(StringUtils.lblMyOffers, ImageUtils.iconBack, true, () {
              Get.back();
            }, [], false, true),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 0.7,
                              crossAxisCount: 2,

                              mainAxisSpacing: 10),
                      itemCount: _.offers.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                                child: ImageView(
                                  _.offers[index]['img'],
                                  ImageType.asset,
                                  height: 119,
                                  width: 149,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  TextView(
                                    _.offers[index]['off'],
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ],
                              ),
                            const  SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 15,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.only(right: 15.0),
                                      child: TextView(
                                        _.offers[index]['offer_desc'],
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        maxLines: 3,
                                        textColor: AppColors.bluePrimary,
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 25),
                              AppRaisedButton(
                                title: StringUtils.lblApply,
                                titleColor: AppColors.primaryFonts,
                                titleSize: 12,
                                titleFontWeight: FontWeight.w600,
                                height: 34,
                                width: 149,
                                borderRadius: 24,
                                buttoncolor:const Color(0xFF005479).withOpacity(.10),
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
