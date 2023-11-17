import 'package:flower_store/controllers/button_controller/button_controller.dart';
import 'package:flower_store/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class MyItem extends StatelessWidget {
  MyItem({super.key});

  final ButtonController buttonController = Get.put(ButtonController());

  bool pressed=false;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      itemCount: 7,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      itemBuilder: (context, index) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              children: [
                InkWell(
                  onTap: (){
                    Get.to(DetailScreen(imgPath: '${buttonController.imgPath}${index + 1}.jpg'));
                  },
                    child: Obx(() => Image.asset('${buttonController.imgPath}${index + 1}.jpg',fit: BoxFit.cover,)),),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Obx(() => FloatingActionButton.small(
                    backgroundColor: Colors.white,
                    onPressed: (){
                      buttonController.pressed.toggle();
                    },
                    child: Icon(buttonController.pressed.value?Icons.add_circle:Icons.add_circle_outline,color: Colors.red,),
                  ),)
                )
              ],
            ),
        );
      },
    );
  }
}
