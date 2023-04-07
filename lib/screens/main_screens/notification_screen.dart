import 'package:fashion_bazaar/controllers/main_screens_controllers/notification_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/appBar.dart';
import '../../widgets/image_view.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(
        init: NotificationController(),
        builder: (_) {
          return Scaffold(
            appBar: Appbar(
                StringUtils.lblNotifications,
                ImageUtils.iconBack,
                true,
                    () {
                  Get.back();
                    }, [],
                false,
                true),
          );
        });
  }
}
