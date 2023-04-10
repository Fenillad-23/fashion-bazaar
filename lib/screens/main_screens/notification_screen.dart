import 'package:fashion_bazaar/controllers/main_screens_controllers/notification_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/TextView.dart';
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
                StringUtils.lblNotifications, ImageUtils.iconBack, true, () {
              Get.back();
            }, [], false, true),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: ListView.builder(
                  itemCount: _.notification.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          width: Get.width / 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius:BorderRadius.circular(5),
                                    child: ImageView(
                                      _.notification[index]['img'],
                                      ImageType.asset,
                                      height: 48,
                                      width: 48,

                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                            child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20.0),
                                          child: TextView(
                                            _.notification[index]
                                                ['notifiction'],
                                            textColor: const Color(0xff005479),
                                          ),
                                        )),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextView(_.notification[index]['time'],textColor: AppColors.primaryHint,),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider()
                      ],
                    );
                  })),
            ),
          );
        });
  }
}
