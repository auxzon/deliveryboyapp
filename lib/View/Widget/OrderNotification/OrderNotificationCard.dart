import 'package:deliveryapp/Utils/TexywithFont/TextwithFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/color.dart';

class NotificationCard extends StatelessWidget {
  final String message;
  final String time;
  final String date;

  const NotificationCard({
    required this.message,
    required this.time,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.green[100],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.notifications,
                color: Colors.green,
              ),
            ),
            title: TextwithFont(
              text: message,
              fontweight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            subtitle: Row(
              children: [
                TextwithFont(
                  text: time,
                  fontweight: FontWeight.bold,
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(.5),
                ),
                const SizedBox(width: 8),
                const Text('|', style: TextStyle(color: Colors.grey)),
                const SizedBox(width: 8),
                TextwithFont(
                  text: date,
                  fontweight: FontWeight.bold,
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
