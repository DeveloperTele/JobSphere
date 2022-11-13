import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:get/get.dart';

class LayoutController extends GetxController {
  GlobalKey<InnerDrawerState> innerDrawerKey = GlobalKey<InnerDrawerState>();
  int currentLayout = 0;

  toggleLeft(){
    innerDrawerKey.currentState!.toggle(direction: InnerDrawerDirection.start);
  }
  toggleRight(){
    innerDrawerKey.currentState!.toggle(direction: InnerDrawerDirection.end);
  }

}