import 'package:get/get.dart';

class UserpointController extends GetxController
{
  var hidepoint =false.obs;
  toggleview(){
    hidepoint.value = !hidepoint.value;
  }
  @override
  void onInit() {
    hidepoint.value = false;
    // TODO: implement onInit
    super.onInit();
  }
}