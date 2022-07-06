

import 'package:get/get.dart';

enum RouteName { today, history,chart}

class ControllerNav extends GetxService{

  RxInt selectIndex = 0.obs;


  void changePageIndex(int index) {
   selectIndex(index);
  }
}