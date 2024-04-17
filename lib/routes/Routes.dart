import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shoesapp/screens/ForgotPassword.dart';
import 'package:shoesapp/screens/LoginPage.dart';
import 'package:shoesapp/screens/SignupPage.dart';
import 'package:shoesapp/screens/SplashScreen.dart';
import 'package:shoesapp/screens/started-pages/FirstStartedPage.dart';
import 'package:shoesapp/screens/started-pages/SeconStartedPage.dart';
import 'package:shoesapp/screens/started-pages/ThirdStartedPage.dart';

class Routes {
  //login and signup and forgot password
  static String signup = '/Login';
  static String signin = '/Signup';
  static String forgotpassword = '/ForgotPassword';

  static String screen3 = '/SplashScreen';

  static String screen4 = '/FirstStartedPage';
  static String screen5 = '/SecondStartedPage';
  static String screen6 = '/ThirdStartedPage';
}

final getPages = [
  //signin
  GetPage(
    name: Routes.signup,
    page: () => const LoginPage(),
  ),
  //signup
  GetPage(
    name: Routes.signin,
    page: () => const SignupPage(),
  ),
  //forgot password
  GetPage(
      name: Routes.forgotpassword,
      page: () => const ForgotPassword(),
  ),


  GetPage(
    name: Routes.screen3,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: Routes.screen4,
    page: () => const FirstStartedPage(),
  ),
  GetPage(
    name: Routes.screen5,
    page: () => const SecondStartedPage(),
  ),
  GetPage(
    name: Routes.screen6,
    page: () => const ThirdStartedPage(),
  ),
];
