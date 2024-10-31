import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controller/AccountController/AccountController.dart';

class EditAddressDialog extends StatelessWidget {
  final AddressController addressController = Get.find(); // Fetch existing controller
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    textEditingController.text = addressController.address.value;

    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      title: Text("Edit Address"),
      content: TextFormField(
        maxLines: null,
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: "Enter your new address",
          border: OutlineInputBorder(),
        ),
      ),
      actions: [
        // Cancel Button
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          child: Text("Cancel"),
        ),
        // Save Button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          onPressed: () {
            addressController.updateAddress(textEditingController.text); // Update address
            Get.back(); // Close the dialog after saving
          },
          child: Text("Save"),
        ),
      ],
    );
  }
}

