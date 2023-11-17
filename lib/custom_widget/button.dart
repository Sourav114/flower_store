import 'package:flower_store/controllers/button_controller/button_controller.dart';
import 'package:flower_store/controllers/button_controller/new_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButton extends StatelessWidget {
  final int buttonIndex;
  final MyController myController;
  final Color? backgroundColor;
  final bool minSize;
  final Color? borderColor;
  final String text;
  final bool flowerPot;
  final bool bouquet;
  final bool hangingPlants;
  final bool tablePlants;
  final bool gardenPlants;

  MyButton({
    required this.buttonIndex,
    required this.myController,
    this.backgroundColor,
    this.minSize = false,
    this.borderColor,
    this.flowerPot = false,
    this.bouquet = false,
    this.hangingPlants = false,
    this.tablePlants = false,
    this.gardenPlants = false,
    required this.text,
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {

    ButtonController buttonController = Get.put(ButtonController());
    MyController myController = Get.put(MyController());
    myController.buttonStates.add(false.obs);

    return Obx(() => ElevatedButton(
      onPressed: () {
        myController.toggleButtonState(buttonIndex);
        if (flowerPot) {
          debugPrint('flowerPot');
          buttonController.flowerPot();
        } else if (bouquet) {
          debugPrint('bouquet');
          buttonController.bouquet();
        } else if (hangingPlants) {
          debugPrint('hangingPlants');
          buttonController.hangingPlants();
        } else if (tablePlants) {
          debugPrint('tablePlants');
          buttonController.tablePlants();
        } else if (gardenPlants) {
          debugPrint('gardenPlants');
          buttonController.gardenPlants();
        }
      },
      style: ButtonStyle(
        backgroundColor: myController.buttonStates[buttonIndex].value
            ? MaterialStateProperty.all(Colors.green)
            : MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(0.1),
        side: MaterialStateProperty.all(BorderSide(color: borderColor ?? Colors.transparent, width: 2.0)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
        minimumSize: minSize ? MaterialStateProperty.all(const Size(175, 50)) : null,
      ),
      child: Text(text, style: const TextStyle(color: Colors.black)),
    )
    );
  }
}
