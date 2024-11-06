import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:flutter/material.dart';
import '../../../../Utils/color.dart';

class Activecard extends StatelessWidget {
  const Activecard({super.key,required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color:Theme.of(context).colorScheme.inversePrimary,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(
          vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.receipt_long,
                  color: Theme.of(context)
                      .colorScheme
                      .primary,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    TextwithFont(
                     text:"Order No: #${1250 + index}",
                        fontweight: FontWeight.bold,
                        color:Theme.of(context).colorScheme.onSurface,
                    ),
                    TextwithFont(
                      text:"Payment: ${299 + index * 50}",
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(.5),
                      fontweight: FontWeight.w700,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor: MaterialStateProperty.all(liteColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: TextwithFont(
                    text: "Details",
                    fontweight: FontWeight.normal,
                  ),
                ),
                // Wrapping the second Row in an Expanded widget
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.green,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Flexible(
                        child: TextwithFont(
                          text: "Madan Street",
                          fontweight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                          overfloww: TextOverflow.ellipsis, // Add ellipsis if text overflows
                        ),
                      ),
                      const SizedBox(width: 8),
                      TextwithFont(
                        text: "TO",
                        color: Theme.of(context).colorScheme.onSurface,
                        fontweight: FontWeight.w100,
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.location_on,
                        color: Colors.green,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Flexible(
                        child: TextwithFont(
                          text: "Park Street",
                          color: Theme.of(context).colorScheme.onSurface,
                          fontweight: FontWeight.bold,
                          overfloww: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
            ,
          ],
        ),
      ),
    );
  }
}
