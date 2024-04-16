import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shoesapp/screens/LoginPage.dart';
import 'package:shoesapp/screens/SignupPage.dart';

class Routes {

  static String screen1 = '/Login';
  static String screen2 = '/Signup';

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
];