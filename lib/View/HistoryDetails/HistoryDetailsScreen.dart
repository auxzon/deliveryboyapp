import 'package:deliveryapp/Utils/AppBar/CommonAppBar.dart';
import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:deliveryapp/Utils/color.dart';
import 'package:deliveryapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Historydetailsscreen extends StatelessWidget {
  const Historydetailsscreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        child: Column(
      children: [
        CommonAppBar(
          title: "History Details",
          onTapLeft: () {
            Get.back();
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            color: Theme.of(context).colorScheme.inversePrimary,
            elevation: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextwithFont(
                    text: "Order No: # 1250",
                    fontweight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      TextwithFont(
                        text: "Location",
                        fontweight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextwithFont(
                    text: "Kochi, Kerala, India , Amrita Hospital , 682041",
                    fontweight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            color: Theme.of(context).colorScheme.inversePrimary,
            elevation: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextwithFont(
                    text: "Payment",
                    fontweight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextwithFont(
                        text: "Rs.",
                        fontweight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    TextwithFont(
                      text: "100.00",
                      fontweight: FontWeight.normal,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextwithFont(
                    text: "Credit Point : 20.2",
                    fontweight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
        ),
        index.isEven
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  elevation: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: TextwithFont(
                          text: "Reason For Cancellation",
                          fontweight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextwithFont(
                              text: "Reason:",
                              fontweight: FontWeight.normal,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: TextwithFont(
                              text: "I changed my mind",
                              fontweight: FontWeight.normal,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  elevation: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: TextwithFont(
                          text: "Review",
                          fontweight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      Container(
                        height: MyApp.height*.1,
                        width: MyApp.width,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          borderRadius:BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) =>
                            Icon(Icons.star,color: ratingcolor,),),
                        ),
                      )
                    ],
                  ),
                ),
              )
      ],
    ));
  }
}
