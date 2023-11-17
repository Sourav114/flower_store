import 'package:flower_store/routing/route_names.dart';
import 'package:flower_store/routing/routes.dart';
import 'package:flower_store/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset('lib/assets/images/flower2.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
        ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Welcome To Our Flowers Store',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color:
                  Colors.white),),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[100]),
                    ),
                      onPressed: (){
                      Get.toNamed(RouteNames.homeScreen);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 60.0),
                        child: Text('Start Visit',style: TextStyle(fontSize: 30,color: Colors.white),),
                      ))
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
