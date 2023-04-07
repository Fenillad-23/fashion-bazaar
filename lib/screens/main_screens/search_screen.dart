import 'package:fashion_bazaar/controllers/main_screens_controllers/home_controller.dart';
import 'package:fashion_bazaar/widgets/TextView.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../controllers/main_screens_controllers/search_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/appBar.dart';
import '../../widgets/image_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
        init: SearchController(),
        builder: (_) {
          return Scaffold(
              appBar: Appbar(
                  '',
                  '',
                  false,
                  () {},
                  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageView(ImageUtils.primaryLogo, ImageType.asset),
                        const SizedBox(
                          width: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 23.05),
                          child: ImageView(
                            ImageUtils.iconNotification,
                            ImageType.asset,
                            height: 20,
                            width: 18.43,
                          ),
                        ),
                      ],
                    )
                  ],
                  true,
                  false),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width / 1,
                        height: 200,
                        child: ListView.builder(
                            itemCount: _.recentSearches.length,
                            itemBuilder: ((context, index) => ListTile(
                                  leading: ImageView(
                                    ImageUtils.iconHistory,
                                    ImageType.asset,
                                    height: 20,
                                    width: 20,
                                  ),
                                  title: TextView(_.recentSearches[index],fontWeight: FontWeight.w400,),
                                ))),
                      ),
                      const TextView(StringUtils.lblRecomended,fontWeight: FontWeight.w600,fontSize: 14,),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        height: 226,
                        child: ListView.builder(
                          shrinkWrap: true,
                          controller: HomeScreenController().cntrl,
                          scrollDirection: Axis.horizontal,
                          itemCount: HomeScreenController().newOffers.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                              EdgeInsets.only(left: index == 0 ? 0 : 16.0),
                              child: Card(
                                elevation: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 226,
                                  width: 143,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 8),
                                        ImageView(
                                          HomeScreenController().newOffers[index]['img'],
                                          ImageType.asset,
                                          height: 119,
                                          width: 119,
                                        ),
                                        const SizedBox(height: 8),
                                        TextView(
                                          HomeScreenController().newOffers[index]['prdName'],
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                        ),
                                        const SizedBox(height: 8),
                                        TextView(
                                          HomeScreenController().newOffers[index]['off'],
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          textColor: AppColors.errorColor,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
