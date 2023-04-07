import 'package:fashion_bazaar/utils/image_utils.dart';
import 'package:fashion_bazaar/utils/string_utils.dart';
import 'package:fashion_bazaar/widgets/TextView.dart';
import 'package:fashion_bazaar/widgets/image_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../controllers/main_screens_controllers/home_controller.dart';
import '../../utils/color_utils.dart';
import '../../widgets/appBar.dart';
import '../../widgets/round_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
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
                        child: GestureDetector(
                          onTap: (){
                            _.redirectToNotification();
                          },
                          child: ImageView(
                            ImageUtils.iconNotification,
                            ImageType.asset,
                            height: 20,
                            width: 18.43,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
                true,
                false),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    const TextView(
                      StringUtils.lblAllCategories,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: Get.width/1,
                      height: 100,
                      child: Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: ListView.builder(
                              shrinkWrap: true,
                              controller: _.cntrl,
                              scrollDirection: Axis.horizontal,
                              itemCount: _.categories.length,
                              itemBuilder: (context, index) {
                                return container(_.categories[index]['img'],
                                    _.categories[index]['label']);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    CarouselSlider(

                      items: _.offer
                          .map((e) => ImageView(
                                e,
                                ImageType.asset,
                                width: 370,
                              ))
                          .toList(),
                      options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          viewportFraction: 1,
                          enlargeFactor: 0.3,
                          enlargeCenterPage: true),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextView(
                          StringUtils.lblNewArrival,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                        TextView(
                          StringUtils.lblViewAll,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          textColor: AppColors.bluePrimary,
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      height: 226,
                      child: ListView.builder(
                        shrinkWrap: true,
                        controller: _.cntrl,
                        scrollDirection: Axis.horizontal,
                        itemCount: _.newOffers.length,
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
                                        _.newOffers[index]['img'],
                                        ImageType.asset,
                                        height: 119,
                                        width: 119,
                                      ),
                                      const SizedBox(height: 8),
                                      TextView(
                                        _.newOffers[index]['prdName'],
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        children: [
                                          TextView(
                                            _.newOffers[index]['price'],
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            textColor: AppColors.bluePrimary,
                                          ),
                                          const SizedBox(width: 6,),
                                          const TextView(
                                            "\$534,33",
                                            textDecoration: TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,

                                            textColor: AppColors.primaryHint,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      TextView(
                                        _.newOffers[index]['off'],
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
            ),
          );
        });
  }
}
