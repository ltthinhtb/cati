import 'package:cati/ui/pages/home/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class MainState {
  late RxInt selectedIndex;

  ///PageView page
  late List<Widget> pageList;
  late PageController pageController;

  MainState() {
    //Initialize index
    selectedIndex = 0.obs;
    //PageView page
    pageList = [
      const HomePage(),
      const Scaffold(),
      const Scaffold(),
      const Scaffold(),
    ];
    //Page controller
    pageController = PageController();
  }
}
