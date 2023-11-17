import 'package:get/get.dart';

class MyController extends GetxController {
  var buttonStates = <RxBool>[true.obs];
  void toggleButtonState(int buttonIndex) {

    for (var state in buttonStates) {
      state.value = false;
    }

    buttonStates[buttonIndex].value = !buttonStates[buttonIndex].value;
  }
}