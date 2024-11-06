import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:flutter/material.dart';

class Newscard extends StatelessWidget {
  const Newscard({super.key,required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return  Card(
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
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextwithFont(
                      text:
                      "Order No: #${1250 + index}",
                        fontweight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    TextwithFont(
                      text: "Payment: \$${299 + index * 50}",
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(.5),
                      fontweight: FontWeight.w100,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 8),
                Icon(
                  Icons.location_on,
                  color: Colors.green,
                  size: 18,
                ),
                const SizedBox(width: 4),
                TextwithFont(
                  text: "Park Street",
                  fontweight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Add Reject button functionality
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Reject",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {
                    // Add Accept button functionality
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.green),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("Accept"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
