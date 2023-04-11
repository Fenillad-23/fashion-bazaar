import 'package:fashion_bazaar/utils/color_utils.dart';
import 'package:fashion_bazaar/widgets/TextView.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../controllers/main_screens_controllers/terms_and_condition_controller.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/appBar.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TermsAndConditionController>(
      init: TermsAndConditionController(),
      builder: (_) {
        return Scaffold(
          appBar: Appbar(
              StringUtils.lblTermsAndConditions, ImageUtils.iconBack, true, () {
            Get.back();
          }, [], false, true),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 22,
                  ),
                  TextView(
                    StringUtils.lblAbout,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  TextView(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Consequent null am tort molest ante facilitates rises facilitates at. Lacks wget magna enum, adipiscing magna critique facility. Vitae adipiscing at flavoring suspense ferment elementum ut sed portion. Nis Lauris squelchier quits est commode elementum null. Fauci bus nib commode et mi oculist. Metes integer nil, urn bandit mass a.'
                    'Rivera mi dues perambulator dictum. Pulmonary enum consectetur flavoring at premium tempus. Vel ac lorem urn amputate senescent. Sagittal argue aliquot nib premium. Culiacan eu a nib mus quits.'
                    'Ut arc interpellates volute sed. Elementum eu, urn enim enum pharetra quits null am. Nil eu vel sit non dissimilar squelchier condiment null. Sultriness urn qualm a sit phallus volute sed. Ege in habilitates phallus prurient wget purus nets.'
                    'Nib volute ante wget at curses ult-rices Podio. In faucets sed pharetra incident. Purus argue consequent et ac enim urn faucets sit. Et montes, tort morbid sed rhonchus, urn, mass. Suspense vel imper-diet sit integer perambulator vitae. Gestates nun diam morbid amputate null am consequent, arc commode. Interpellates tempus, est ipsum dui sit magnetism nun sempre. Aliquot lectures libero adipiscing veldt ac quits sagittal, faucets. Incident id consequent, ut risque potent vel facility libero, erat. Integer actor effendi actor aliquot.'
                    'Turps dolor null habitat lorem consectetur rises. Qui id critique ut in morbid. Sagittal Lauris, diam venation argue rises quits commode. Tort, sem sit wget et sit null. Consequent purus aliquot qualm et, squelchier nun. Effendi eu aliquot tells facilitates sit temper sed incident.',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    textColor: AppColors.primaryHint,
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  TextView(
                    StringUtils.lblContent,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextView(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Consequent null am tort molest ante facilitates rises facilitates at. Lacks wget magna enum, adipiscing magna critique facility. Vitae adipiscing at flavoring suspense ferment elementum ut sed portion. Nis Lauris squelchier quits est commode elementum null. Fauci bus nib commode et mi oculist. Metes integer nil, urn bandit mass a.'
                        'Rivera mi dues perambulator dictum. Pulmonary enum consectetur flavoring at premium tempus. Vel ac lorem urn amputate senescent. Sagittal argue aliquot nib premium. Culiacan eu a nib mus quits.'
                        'Ut arc interpellates volute sed. Elementum eu, urn enim enum pharetra quits null am. Nil eu vel sit non dissimilar squelchier condiment null. Sultriness urn qualm a sit phallus volute sed. Ege in habilitates phallus prurient wget purus nets.'
                        'Nib volute ante wget at curses ult-rices Podio. In faucets sed pharetra incident. Purus argue consequent et ac enim urn faucets sit. Et montes, tort morbid sed rhonchus, urn, mass. Suspense vel imper-diet sit integer perambulator vitae. Gestates nun diam morbid amputate null am consequent, arc commode. Interpellates tempus, est ipsum dui sit magnetism nun sempre. Aliquot lectures libero adipiscing veldt ac quits sagittal, faucets. Incident id consequent, ut risque potent vel facility libero, erat. Integer actor effendi actor aliquot.'
                        'Turps dolor null habitat lorem consectetur rises. Qui id critique ut in morbid. Sagittal Lauris, diam venation argue rises quits commode. Tort, sem sit wget et sit null. Consequent purus aliquot qualm et, squelchier nun. Effendi eu aliquot tells facilitates sit temper sed incident.',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    textColor: AppColors.primaryHint,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
