import 'package:fashion_bazaar/utils/image_utils.dart';
import 'package:get/get.dart';

class MyOfferController extends GetxController {
  List offers = [
    {
      'img': ImageUtils.imageTommyHilfinger,
      'off': '50% Off',
      'offer_desc': 'Special Offer on Tommy Hilfiger Brand'
    },
    {
      'img': ImageUtils.imageAdidas,
      'off': '50% Off',
      'offer_desc': 'Special Offer on Adidas'
    },
    {
      'img': ImageUtils.imageZara,
      'off': '50% Off',
      'offer_desc': 'Special Offer on Tommy Hilfiger Brand'
    },
    {
      'img': ImageUtils.imageVastram,
      'off': '50% Off',
      'offer_desc': 'Special Offer on Tommy Hilfiger Brand'
    },
  ];
}
