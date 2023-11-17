
import 'package:flower_store/routing/route_names.dart';
import 'package:flower_store/screens/home_screen.dart';
import 'package:flower_store/screens/splash_screen.dart';
import 'package:get/get.dart';

class Routes{

  static appRoutes() => [
    GetPage(
        name: RouteNames.splashScreen,
        page: () => const SplashScreen(),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: RouteNames.homeScreen,
        page: () => HomeScreen(),
        transition: Transition.leftToRight),
  ];
}