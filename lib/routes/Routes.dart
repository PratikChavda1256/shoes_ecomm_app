import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shoesapp/screens/LoginPage.dart';
import 'package:shoesapp/screens/SignupPage.dart';
import 'package:shoesapp/screens/SplashScreen.dart';
import 'package:shoesapp/screens/started-pages/FirstStartedPage.dart';
import 'package:shoesapp/screens/started-pages/SeconStartedPage.dart';
import 'package:shoesapp/screens/started-pages/ThirdStartedPage.dart';

class Routes {
  static String screen1 = '/Login';
  static String screen2 = '/Signup';
  static String screen3 = '/SplashScreen';

  static String screen4 = '/FirstStartedPage';
  static String screen5 = '/SecondStartedPage';
  static String screen6 = '/ThirdStartedPage';
}

final getPages = [
  GetPage(
    name: Routes.screen1,
    page: () => const LoginPage(),
  ),
  GetPage(
    name: Routes.screen2,
    page: () => const SignupPage(),
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
