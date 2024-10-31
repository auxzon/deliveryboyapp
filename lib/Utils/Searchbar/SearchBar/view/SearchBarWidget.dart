import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controller/SearchbarConreoller/SearchBarController.dart';

class SearchBarAnimated extends StatelessWidget {
  SearchBarAnimated({super.key,required this.texts});
String texts;
  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    var controller = Get.put(SearchConroler());

      return SizedBox(
        child: Obx(
              () => AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: controller.displaysearch.value
                ? TextFormField(
              onChanged: (value) {
                controller.searchtext.value = value;
              },
              controller: search,
              key: ValueKey('TextFormField'), // Unique key for widget
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary.withOpacity(.8),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary.withOpacity(.8),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: Obx(
                      () => controller.searchtext.value.isNotEmpty
                      ? IconButton(
                    onPressed: () {
                      // Add search functionality
                    },
                    icon: Icon(
                      Icons.search,
                      color: Theme.of(context).colorScheme.primary.withOpacity(.8),
                    ),
                  )
                      : IconButton(
                    onPressed: () {
                      controller.Displaysearch(); // Toggle visibility
                    },
                    icon: Icon(
                      Icons.cancel,
                      color: Theme.of(context).colorScheme.primary.withOpacity(.8),
                    ),
                  ),
                ),
                hintText: texts,
                hintStyle: TextStyle(
                  color: Theme.of(context).colorScheme.primary.withOpacity(.8),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            )
                : Align(
              alignment: Alignment.centerLeft,
              child: Material(
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                key: ValueKey('SearchIcon'), // Unique key for widget
                elevation: 10,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  child: IconButton(
                    color: Theme.of(context).colorScheme.primary.withOpacity(.8),
                    onPressed: () {
                      controller.Displaysearch(); // Toggle visibility
                      print("displaysearch.value : ${controller.displaysearch.value}");
                    },
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
        )
      );

  }
}
