import 'package:get/get.dart';

class OrderhistoryController extends GetxController
{
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
  List OrderHotel = <String>[
    "Hotel1",
    "Hotel2",
    "Hotel3",
    "Hotel4",
  ];
  List OrdersPaymenttype = <int>[
    1,
    1,
    0,
    0,
  ];
  List Ordersid = <int>[
    1456,
    0789,
    1741,
    0856,
  ];
  List Orderpoints = <String>[
    "100.00",
    "200.00",
    "100.00",
    "600.00",
  ];
  List Orderstatus = <String>[
    "success",
    "success",
    "canceled",
    "canceled",
  ];
}