import 'package:get/get.dart';

class QrColoroller extends GetxController
{
  navigatback()async{
    await Future.delayed(Duration(seconds: 5),() {
      Get.back();
    },);
  }
  @override
  void onInit() {
    navigatback();
    super.onInit();
  }
}