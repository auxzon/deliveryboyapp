import 'package:get/get.dart';

class SearchConroler extends GetxController {
  var displaysearch = false.obs;
  var searchtext = "".obs;
  Displaysearch() {
    displaysearch.value = !displaysearch.value;
  }
}
