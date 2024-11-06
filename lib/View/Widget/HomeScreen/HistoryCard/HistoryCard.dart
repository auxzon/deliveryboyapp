import 'package:deliveryapp/View/HistoryDetails/HistoryDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/TexywithFont/TextwithFont.dart';
import '../../../../Utils/color.dart';

class Historycard extends StatelessWidget {
  const Historycard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(()=>Historydetailsscreen(index: index,));
      },
      child: Card(
        color:Theme.of(context).colorScheme.inversePrimary,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.receipt_long,
                    color: Theme.of(context).colorScheme.primary,
                    size: 25,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextwithFont(
                       text:"Order No: #${1250 + index}",
                          fontweight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextwithFont(
                           text:"Payment: ${299 + index * 50}",
                    fontweight: FontWeight.w900,
                              color:Theme.of(context).colorScheme.onSurface,
                          ),
                          Icon(
                            index.isEven ? Icons.close : null,
                            color: index.isEven ? nonvegfoodcolor : vegfoodcolor,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const SizedBox(width: 8),
                  Icon(
                    Icons.location_on,
                    color: Theme.of(context).colorScheme.primary,
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  TextwithFont(
                  text:"Park Street",
                    color: Theme.of(context).colorScheme.onSurface,
                    fontweight: FontWeight.w900,
                  ),
                  Spacer(),
                  index.isEven
                      ? SizedBox.shrink()
                      : Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextwithFont(
                                text: "Score : ", fontweight: FontWeight.w500),
                            TextwithFont(text: "20", fontweight: FontWeight.bold),
                          ],
                        )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
