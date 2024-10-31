import 'package:get/get.dart';

class AddressController extends GetxController {
  var address = "Address with details of user to reach out by delivery boy".obs;

  void updateAddress(String newAddress) {
    address.value = newAddress;
  }
}
