import 'package:fashion_bazaar/utils/color_utils.dart';
import 'package:fashion_bazaar/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/main_screens_controllers/category_controller.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/appBar.dart';
import '../../widgets/image_view.dart';
import '../../widgets/round_container.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
        init: CategoryController(),
        builder: (_) {
          return Scaffold(
            appBar: Appbar(
                '',
                '',
                false,
                () {
                  Get.back();
                },
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageView(ImageUtils.primaryLogo, ImageType.asset),
                      const SizedBox(
                        width: 210,
                      ),
                      Row(
                        children: [
                          ImageView(
                            ImageUtils.iconCartInactive,
                            ImageType.asset,
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 17,
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
                      ),
                    ],
                  )
                ],
                true,
                false),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 126,
                        width: Get.width / 1,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                              image: DecorationImage(
                                isAntiAlias: true,
                                fit: BoxFit.cover,
                                image: AssetImage(ImageUtils.texture),
                              )),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 19,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextView(
                                      StringUtils.lblMen,
                                      textColor: AppColors.bluePrimary,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        _.makeMenAllVisible();
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const TextView(
                                            StringUtils.lblAllCategories,
                                            textColor: AppColors.bluePrimary,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                          const SizedBox(
                                            width: 10.52,
                                          ),
                                          Obx(
                                            () => ImageView(
                                              _.isVisibleMenAllCategory.value
                                                  ? ImageUtils.iconUp
                                                  : ImageUtils.iconDown,
                                              ImageType.asset,
                                              height: 4.57,
                                              width: 9,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    ImageView(
                                      ImageUtils.imageMen,
                                      ImageType.asset,
                                      width: 164,
                                      height: 126,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => Visibility(
                        visible: _.isVisibleMenAllCategory.value,
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
                            GestureDetector(
                              onTap: () {
                                _.makeMenTopVisible();
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: AppColors.grey,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const TextView(
                                      StringUtils.lblTop,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const SizedBox(
                                      width: 9.52,
                                    ),
                                    Obx(
                                      () => ImageView(
                                        _.isVisibleMenTopCategory.value
                                            ? ImageUtils.iconUp
                                            : ImageUtils.iconDown,
                                        ImageType.asset,
                                        height: 4.57,
                                        width: 9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Obx(
                              () => Visibility(
                                visible: _.isVisibleMenTopCategory.value,
                                child: SizedBox(
                                  width: Get.width / 1,
                                  height: 100,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          controller: _.cntrl,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: _.menTopWear.length,
                                          itemBuilder: (context, index) {
                                            return container(
                                                _.menTopWear[index]['img'],
                                                _.menTopWear[index]['label']);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //const SizedBox(height: 10,),
                            GestureDetector(
                              onTap: () {
                                // _.makeMenTopVisible();
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: AppColors.grey,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const TextView(
                                      StringUtils.lblPents,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const SizedBox(
                                      width: 9.52,
                                    ),
                                    ImageView(
                                      ImageUtils.iconDown,
                                      ImageType.asset,
                                      height: 4.57,
                                      width: 9,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            GestureDetector(
                              onTap: () {
                                // _.makeMenTopVisible();
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: AppColors.grey,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const TextView(
                                      StringUtils.lblShoes,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const SizedBox(
                                      width: 9.52,
                                    ),
                                    ImageView(
                                      ImageUtils.iconDown,
                                      ImageType.asset,
                                      height: 4.57,
                                      width: 9,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 126,
                        width: Get.width / 1,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                              image: DecorationImage(
                                isAntiAlias: true,
                                fit: BoxFit.cover,
                                image: AssetImage(ImageUtils.texture),
                              )),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 19,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextView(
                                      StringUtils.lblWomen,
                                      textColor: AppColors.bluePrimary,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const TextView(
                                          StringUtils.lblAllCategories,
                                          textColor: AppColors.bluePrimary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                        ),
                                        const SizedBox(
                                          width: 10.52,
                                        ),
                                        ImageView(
                                          ImageUtils.iconDown,
                                          ImageType.asset,
                                          height: 4.57,
                                          width: 9,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    ImageView(
                                      ImageUtils.imageWomen,
                                      ImageType.asset,
                                      width: 164,
                                      height: 126,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                       visible: false,
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: () {
                              _.makeMenTopVisible();
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextView(
                                    StringUtils.lblTop,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(
                                    width: 9.52,
                                  ),
                                  ImageView(
                                    ImageUtils.iconDown,
                                    ImageType.asset,
                                    height: 4.57,
                                    width: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Visibility(
                            visible: _.isVisibleMenTopCategory.value,
                            child: SizedBox(
                              width: Get.width / 1,
                              height: 100,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      controller: _.cntrl,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: _.menTopWear.length,
                                      itemBuilder: (context, index) {
                                        return container(
                                            _.menTopWear[index]['img'],
                                            _.menTopWear[index]['label']);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //const SizedBox(height: 10,),
                          GestureDetector(
                            onTap: () {
                              // _.makeMenTopVisible();
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextView(
                                    StringUtils.lblPents,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(
                                    width: 9.52,
                                  ),
                                  ImageView(
                                    ImageUtils.iconDown,
                                    ImageType.asset,
                                    height: 4.57,
                                    width: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {
                              // _.makeMenTopVisible();
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextView(
                                    StringUtils.lblShoes,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(
                                    width: 9.52,
                                  ),
                                  ImageView(
                                    ImageUtils.iconDown,
                                    ImageType.asset,
                                    height: 4.57,
                                    width: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 126,
                        width: Get.width / 1,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                              BorderRadius.all(Radius.circular(21)),
                              image: DecorationImage(
                                isAntiAlias: true,
                                fit: BoxFit.cover,
                                image: AssetImage(ImageUtils.texture),
                              )),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 19,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextView(
                                      StringUtils.lblChild,
                                      textColor: AppColors.bluePrimary,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        const TextView(
                                          StringUtils.lblAllCategories,
                                          textColor: AppColors.bluePrimary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                        ),
                                        const SizedBox(
                                          width: 10.52,
                                        ),
                                        ImageView(
                                          ImageUtils.iconDown,
                                          ImageType.asset,
                                          height: 4.57,
                                          width: 9,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    ImageView(
                                      ImageUtils.children,
                                      ImageType.asset,
                                      width: 164,
                                      height: 126,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: false,
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: () {
                              _.makeMenTopVisible();
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextView(
                                    StringUtils.lblTop,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(
                                    width: 9.52,
                                  ),
                                  ImageView(
                                    ImageUtils.iconDown,
                                    ImageType.asset,
                                    height: 4.57,
                                    width: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Visibility(
                            visible: _.isVisibleMenTopCategory.value,
                            child: SizedBox(
                              width: Get.width / 1,
                              height: 100,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      controller: _.cntrl,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: _.menTopWear.length,
                                      itemBuilder: (context, index) {
                                        return container(
                                            _.menTopWear[index]['img'],
                                            _.menTopWear[index]['label']);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //const SizedBox(height: 10,),
                          GestureDetector(
                            onTap: () {
                              // _.makeMenTopVisible();
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextView(
                                    StringUtils.lblPents,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(
                                    width: 9.52,
                                  ),
                                  ImageView(
                                    ImageUtils.iconDown,
                                    ImageType.asset,
                                    height: 4.57,
                                    width: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {
                              // _.makeMenTopVisible();
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextView(
                                    StringUtils.lblShoes,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(
                                    width: 9.52,
                                  ),
                                  ImageView(
                                    ImageUtils.iconDown,
                                    ImageType.asset,
                                    height: 4.57,
                                    width: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 126,
                        width: Get.width / 1,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                              BorderRadius.all(Radius.circular(21)),
                              image: DecorationImage(
                                isAntiAlias: true,
                                fit: BoxFit.cover,
                                image: AssetImage(ImageUtils.texture),
                              )),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 19,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextView(
                                      StringUtils.lblJewellery,
                                      textColor: AppColors.bluePrimary,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        const TextView(
                                          StringUtils.lblAllCategories,
                                          textColor: AppColors.bluePrimary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                        ),
                                        const SizedBox(
                                          width: 10.52,
                                        ),
                                        ImageView(
                                          ImageUtils.iconDown,
                                          ImageType.asset,
                                          height: 4.57,
                                          width: 9,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    ImageView(
                                      ImageUtils.jewelNew,
                                      ImageType.asset,
                                      width: 164,
                                      height: 126,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: false,
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: () {
                              _.makeMenTopVisible();
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextView(
                                    StringUtils.lblTop,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(
                                    width: 9.52,
                                  ),
                                  ImageView(
                                    ImageUtils.iconDown,
                                    ImageType.asset,
                                    height: 4.57,
                                    width: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Visibility(
                            visible: _.isVisibleMenTopCategory.value,
                            child: SizedBox(
                              width: Get.width / 1,
                              height: 100,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      controller: _.cntrl,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: _.menTopWear.length,
                                      itemBuilder: (context, index) {
                                        return container(
                                            _.menTopWear[index]['img'],
                                            _.menTopWear[index]['label']);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //const SizedBox(height: 10,),
                          GestureDetector(
                            onTap: () {
                              // _.makeMenTopVisible();
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextView(
                                    StringUtils.lblPents,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(
                                    width: 9.52,
                                  ),
                                  ImageView(
                                    ImageUtils.iconDown,
                                    ImageType.asset,
                                    height: 4.57,
                                    width: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {
                              // _.makeMenTopVisible();
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextView(
                                    StringUtils.lblShoes,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(
                                    width: 9.52,
                                  ),
                                  ImageView(
                                    ImageUtils.iconDown,
                                    ImageType.asset,
                                    height: 4.57,
                                    width: 9,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
