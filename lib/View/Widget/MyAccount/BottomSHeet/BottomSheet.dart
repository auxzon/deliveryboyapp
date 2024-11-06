import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Controller/AccountController/AccountController.dart';
import '../../../../Utils/TexywithFont/TextwithFont.dart';

class EditProfileBottomSheet extends StatelessWidget {
  final AddressController addressController;

  EditProfileBottomSheet({required this.addressController});

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _nameController.text = addressController.name.value;
    _emailController.text = addressController.email.value;

    return Container(
      padding: EdgeInsets.all(16),
      child: Wrap(
        children: [
          Align(
            alignment: Alignment(0, 0),
            child: Text("Edit Profile",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: "Name"),
          ),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(labelText: "Email"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              addressController.updateProfile(
                _nameController.text,
                _emailController.text,
              );
              Get.back(); // Close the bottom sheet
            },
            child: TextwithFont(
              text: "Save",
              fontweight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ],
      ),
    );
  }
}