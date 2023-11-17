import 'package:get/get.dart';

class ButtonController extends GetxController {
  RxString imgPath = 'lib/assets/images/flowerpot'.obs;
  RxBool isButtonTapped = false.obs;
  RxBool pressed = false.obs;

  @override
  void dispose() {
    super.dispose(); // Correct disposal of the controller
  }

  String flowerPot() {
    imgPath.value = 'lib/assets/images/flowerpot';
    return imgPath.value;
  }

  String bouquet() {
    imgPath.value = 'lib/assets/images/bouquet';
    return imgPath.value;
  }

  String hangingPlants() {
    imgPath.value = 'lib/assets/images/hangingPlants';
    return imgPath.value;
  }

  String tablePlants() {
    imgPath.value = 'lib/assets/images/tablePlant';
    return imgPath.value;
  }

  String gardenPlants() {
    imgPath.value = 'lib/assets/images/gardenPlant';
    return imgPath.value;
  }

}
