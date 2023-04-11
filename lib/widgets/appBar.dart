// ignore_for_file: prefer_const_constructors
import 'package:fashion_bazaar/utils/route_generator.dart';
import 'package:fashion_bazaar/utils/string_utils.dart';
import 'package:fashion_bazaar/widgets/edit_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import '../utils/image_utils.dart';
import 'TextView.dart';
import 'image_view.dart';

// class AppBarCommon extends StatelessWidget {
//   String title;
//   GestureTapCallback onBack;
//   String? fontfamily;
//   double? fontSize;
//   FontWeight? fontWeight;
//   bool? isenabled;
//   List<Widget>? actions;

//   AppBarCommon(
//       {super.key,
//       required this.title,
//       required this.onBack,
//       this.fontfamily,
//       this.fontSize,
//       this.fontWeight,
//       this.isenabled,
//       this.actions});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: AppColors.green,
//       elevation: 0,
//       leadingWidth: 50,
//       actions: actions ?? [],
//       leading: IconButton(
//           onPressed: onBack,
//           icon: ImageView(
//             Image_utils.back,
//             ImageType.asset,
//             height: 20,
//             width: 20,
//           )),
//       title: TextView(
//         title,
//         textColor: AppColors.white,
//         fontSize: fontSize ?? 18,
//         maxLines: 3,
//       ),
//       automaticallyImplyLeading: false,
//     );
//   }
// }

AppBar Appbar(
  String? title, [
  String? path,
  bool? Leading,
  void onPressed()?,
  List<Widget>? actions,
  bool? bottom,
  bool? centerTitle,
]) {
  return AppBar(
    backgroundColor: AppColors.white,
    elevation: 6,
    toolbarHeight: 100,
    centerTitle: centerTitle,
    leading: Leading!
        ? IconButton(
            icon: ImageView(
              path!,
              ImageType.asset,
              height: 10.49,
              width: 20,
              fit: BoxFit.fill,
            ),
            onPressed: onPressed,
          )
        : null,
    automaticallyImplyLeading: false,
    title: TextView(
      '$title',
      textAlign: TextAlign.center,
      fontSize: 20,
       textColor: AppColors.primaryFonts,
    ),
    actions: actions,
    bottom: PreferredSize(
        preferredSize: Size.fromHeight(bottom! ? 30 : 0),
        child: bottom
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                child: EditText(

                  borderRadius: 6,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15.98, right: 2),
                    child: GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteGenerator.searchscreen);
                        },
                        child: ImageView(
                          ImageUtils.iconSearch,
                          ImageType.asset,
                          height: 15.01,
                          width: 15.01,
                        )),
                  ),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 15.1, minHeight: 15.1),
                  hint: StringUtils.lblSearch,
                  isBorderEnabled: true,
                  filled: true,
                  fillColor: AppColors.grey,
                ),
              )
            : SizedBox()),
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.only(
    //     bottomLeft: Radius.circular(20),
    //     bottomRight: Radius.circular(20),
    //   ),
    // ),
  );
}
