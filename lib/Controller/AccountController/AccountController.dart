import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AddressController extends GetxController {
  final addressbox = GetStorage();

  // Observable variables for profile data
  var name = ''.obs;
  var email = ''.obs;

  // Load initial data from GetStorage
  @override
  void onInit() {
    super.onInit();
    name.value = addressbox.read('name') ?? 'Delivery-boy';
    email.value = addressbox.read('email') ?? 'deliveryboy@gmail.com';
  }

  // Update and save profile data to GetStorage
  void updateProfile(String newName, String newEmail,) {
    name.value = newName;
    email.value = newEmail;

    // Save to GetStorage
    addressbox.write('name', newName);
    addressbox.write('email', newEmail);
  }
}
