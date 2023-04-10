import 'package:fashion_bazaar/utils/image_utils.dart';
import 'package:get/get.dart';


class NotificationController extends GetxController {
  List notification = [
    {
      'notifiction': "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      'time': "5 Hrs ago",
      'img': ImageUtils.shirt1
    },
    {
      'notifiction': "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      'time': "7 days ago",
      'img': ImageUtils.shirt1
    },
    {
      'notifiction':
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Penatibus elit facilisi eget odio viverra et tortor sapien. Vitae, volutpat semper luctus vitae vulputate lectus enim.",
      'time': "14 days ago",
      'img': ImageUtils.shirt1
    }
  ];
}
