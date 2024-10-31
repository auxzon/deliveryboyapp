import 'package:deliveryapp/Utils/color.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Color? bgcolor;
  final bool? extendBody;

  const BaseScreen({
    Key? key,
    required this.child,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.drawer,
    this.bgcolor,
    this.bottomNavigationBar,
    this.extendBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        appBar: appBar,
        body: child,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        drawer: drawer,
        bottomNavigationBar: bottomNavigationBar,
        extendBody: extendBody??false,
      ),
    );
  }
}
