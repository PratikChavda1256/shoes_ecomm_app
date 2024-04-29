import 'package:get/get.dart';

class OnBoardController extends GetxController {
  RxInt index = 0.obs;
  RxString btnText = "Get Started".obs;

  incrementIndex() {
    try {
      index.value++;
    } catch (e) {
      print('Error in incrementIndex: $e');
      // Handle error gracefully, such as showing a snackbar or logging it.
    }
  }

  changeText(String value) {
    try {
      btnText.value = value;
    } catch (e) {
      print('Error in changeText: $e');
      // Handle error gracefully, such as showing a snackbar or logging it.
    }
  }
}
