import 'package:flower_store/routing/route_names.dart';
import 'package:flower_store/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.appRoutes(),
      initialRoute: RouteNames.splashScreen,
    );
  }
}
