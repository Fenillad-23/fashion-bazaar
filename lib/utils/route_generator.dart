import 'package:fashion_bazaar/screens/bottor_bar/bottom_bar_screen.dart';
import 'package:fashion_bazaar/screens/forgot_password_screens/forogot_password_screen.dart';
import 'package:fashion_bazaar/screens/forgot_password_screens/reset_password_screen.dart';
import 'package:get/get.dart';

import '../screens/authentication_screens/sign_in_screen.dart';
import '../screens/authentication_screens/sign_up_screen.dart';
import '../screens/main_screens/change_password_screen.dart';
import '../screens/main_screens/edit_profile_screen.dart';
import '../screens/main_screens/notification_screen.dart';
import '../screens/main_screens/search_screen.dart';
import '../screens/main_screens/terms_and_condition_screen.dart';

abstract class RouteGenerator {
  static const signinscreen = '/signinscreen';
  static const signupscreen = '/signupscreen';
  static const forgotpasswordsceen = "/forgotpasswordsceen";
  static const resetpasswordscreen = "/resetpasswordscreen";
  static const bottombarscreen = "/bottombarscreen";
  static const searchscreen = "/searchscreen";
  static const notificationscreen = "/notificationscreen";
  static const editprofilescreen = "/editprofilescreen";
  static const changepasswordscreen = "/changepasswordscreen";
  static const termsandconditionsscreen = "/termsandconditionsscreen";
  static List<GetPage> pages = [
    GetPage(
        name: RouteGenerator.signinscreen, page: () => const SignInScreen()),
    GetPage(
        name: RouteGenerator.signupscreen, page: () => const SignUpScreen()),
    GetPage(
        name: RouteGenerator.forgotpasswordsceen,
        page: () => const ForgotPasswordScreen()),
    GetPage(
        name: RouteGenerator.resetpasswordscreen,
        page: () => const ResetPasswordScreen()),
    GetPage(
        name: RouteGenerator.bottombarscreen,
        page: () => const BottomBarScreen()),
    GetPage(
        name: RouteGenerator.searchscreen, page: () => const SearchScreen()),
    GetPage(
        name: RouteGenerator.notificationscreen,
        page: () => const NotificationScreen()),
    GetPage(
        name: RouteGenerator.editprofilescreen,
        page: () => const EditProfileScreen()),
    GetPage(
        name: RouteGenerator.changepasswordscreen,
        page: () => const ChangePasswordScreen()),
    GetPage(
        name: RouteGenerator.termsandconditionsscreen,
        page: () => const TermsAndConditionsScreen()),
  ];
}
