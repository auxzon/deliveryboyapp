import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AddressController extends GetxController {
  final addressbox = GetStorage();

  // Observable variables for profile data
  var name = ''.obs;
  var email = ''.obs;
  var address = ''.obs;
  // var imagePath = ''.obs;

  // Load initial data from GetStorage
  @override
  void onInit() {
    super.onInit();
    name.value = addressbox.read('name') ?? 'Delivery-boy';
    email.value = addressbox.read('email') ?? 'deliveryboy@gmail.com';
    address.value = addressbox.read('address') ?? 'Your delivery address';
    // imagePath.value = addressbox.read('imagePath') ?? 'images/default_profile.png';
  }

  // Update and save profile data to GetStorage
  void updateProfile(String newName, String newEmail, String newAddress, String newImagePath) {
    name.value = newName;
    email.value = newEmail;
    address.value = newAddress;
    // imagePath.value = newImagePath;

    // Save to GetStorage
    addressbox.write('name', newName);
    addressbox.write('email', newEmail);
    addressbox.write('address', newAddress);
    // addressbox.write('imagePath', newImagePath);
  }
}
