import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../Utils/BottomSheet/BottomSheet.dart';
import '../../View/Auth/LoginScreen.dart';

class SplashScreenController extends GetxController {
  navigatetohome() {
    final GetStorage storage = GetStorage();

    bool isLoggedIn = storage.read('isLoggedIn') ?? false;
    Future.delayed(
      Duration(seconds: 2),
      () {
        print("storage.read('isLoggedIn'): ${storage.read('isLoggedIn')} , isLoggedIn ; ${isLoggedIn}");
        Get.to(() => isLoggedIn ? BottomNavigator(index: 1) : LoginScreen(), transition: Transition.leftToRight);
      },
    );
  }

  @override
  void onInit() {
    navigatetohome();
    // TODO: implement onInit
    super.onInit();
  }
}
