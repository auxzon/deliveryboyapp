import 'package:deliveryapp/Utils/AppBar/CommonAppBar.dart';
import 'package:deliveryapp/Utils/ScafoldWithsafearea.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Utils/TexywithFont/TextwithFont.dart';

class Activedetailsscreen extends StatelessWidget {
  const Activedetailsscreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        child: Column(
      children: [
        CommonAppBar(
          title: "Active Details",
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextwithFont(
            text: "Map",
            fontweight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.red),
            child: FlutterMap(
              options: MapOptions(
                initialCenter: LatLng(10.028013, 76.305100), // Center the map over London
                initialZoom: 15,
              ),
              children: [
                TileLayer( // Display map tiles from any source
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
                  userAgentPackageName: 'com.example.app',
                  // And many more recommended properties!
                ),
                RichAttributionWidget( // Include a stylish prebuilt attribution widget that meets all requirments
                  attributions: [
                    TextSourceAttribution(
                      'OpenStreetMap contributors',
                      onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')), // (external)
                    ),
                    // Also add images...
                  ],
                ),
              ],
            )
          ),
        ))
      ],
    ));
  }
}
