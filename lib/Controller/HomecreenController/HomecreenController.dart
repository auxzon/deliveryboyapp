import 'dart:developer';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class HomecreenController extends GetxController {

  var result = ''.obs;
  var error = ''.obs;
  void handleError(dynamic error) {
    this.error.value = error.toString();
    result.value = "Error: $error";
  }

  var currentLocation = ''.obs;
  Future<void> fetchCurrentLocation() async {
    try {
      PermissionStatus permissionStatus = await Permission.location.request();
      if (permissionStatus.isGranted) {
        currentLocation.value = "";
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
        await getAddressFromLatLng(position.latitude, position.longitude);
      } else if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
        currentLocation.value = "";
        Get.snackbar(
          "Location Permission",
          "Location permission denied. Please enable location permission from settings.",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      currentLocation.value = "";
      log("error in fetch location : ${e}");
      handleError(e);
    }
  }

  Future<void> getAddressFromLatLng(double lat, double lng) async {
    try {
      currentLocation.value = "";
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        currentLocation.value = "${place.locality}, ${place.administrativeArea}, ${place.country} , ${place.street} , ${place.postalCode}";
      // print(currentLocation.value);
      }
    } catch (e) {
      currentLocation.value = "";
      handleError(e);
    }
  }


  var showlisted = false.obs;
   togglelistedview(){
    showlisted.value = ! showlisted.value;
}
  List Orders = <String>[
    "Order1",
    "Order2",
    "Order3",
    "Order4",
  ];
  List OrdersAddress = <String>[
    "OrderAddress 1",
    "OrderAddress 2",
    "OrderAddress 3",
    "OrderAddress 4",
  ];
  List OrdersPaymenttype = <int>[
    1,
    0,
    1,
    0,
  ];
  List Ordersid = <int>[
    1456,
    0789,
    1741,
    0856,
  ];
  List Orderpriority = <int>[
    0,
    0,
    1,
    0,
  ];
  List OrderHotel = <String>[
    "Hotel1",
    "Hotel2",
    "Hotel3",
    "Hotel4",
  ];
  @override
  void onInit() {
    fetchCurrentLocation();
    // TODO: implement onInit
    super.onInit();
  }
  var currentTabIndex = 0.obs;

  void changeTab(int index) {
    currentTabIndex.value = index;
  }
}
