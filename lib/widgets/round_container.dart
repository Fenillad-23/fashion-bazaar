import 'package:flutter/material.dart';
import '../utils/color_utils.dart';
import '../widgets/TextView.dart';
import '../widgets/image_view.dart';

import '../utils/color_utils.dart';
import 'TextView.dart';
import 'image_view.dart';

 container(String path,String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        ClipRRect(borderRadius: BorderRadius.circular(100),child: ImageView(path, ImageType.asset,height: 60,width: 60,fit: BoxFit.cover,)),
        const SizedBox(height: 6,),
        TextView(title,fontSize: 12,)
      ],
    ),
  );
}
