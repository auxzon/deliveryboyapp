import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../View/Widget/HomeScreen/QR_Code/QR_Code.dart';

class HomecreenController extends GetxController {
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

}
