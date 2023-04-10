import 'package:fashion_bazaar/utils/string_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../utils/image_utils.dart';
import '../../utils/route_generator.dart';

class HomeScreenController extends GetxController {


  List categories = [
    {'img': ImageUtils.men, 'label': StringUtils.lblMen},
    {'img': ImageUtils.women, 'label': StringUtils.lblWomen},
    {'img': ImageUtils.imageBoys, 'label': StringUtils.lblBoys},
    {'img': ImageUtils.imageGirls, 'label': StringUtils.lblGirls},
    {'img': ImageUtils.imageJewellery, 'label': StringUtils.lblJewellery},
  ];
  List newOffers = [
    {
      'img': ImageUtils.shirt1,
      'prdName': 'White Doted Reon Women Shirt....',
      'price': '\$410.83',
      'off': '24% Off'
    },
    {
      'img': ImageUtils.shirt2,
      'prdName': 'White Doted Reon Women Shirt....',
      'price': '\$410.83',
      'off': '24% Off'
    },
    {
      'img': ImageUtils.shirt3,
      'prdName': 'White Doted Reon Women Shirt....',
      'price': '\$410.83',
      'off': '24% Off'
    },
  ];
  ScrollController cntrl = ScrollController();
  List offer = [
    ImageUtils.imageOffer,
    ImageUtils.imageOffer,
    ImageUtils.imageOffer,
    ImageUtils.imageOffer,
    ImageUtils.imageOffer,
  ];

  void redirectToNotification()=>Get.toNamed(RouteGenerator.notificationscreen);
}
