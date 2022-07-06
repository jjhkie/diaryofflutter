


import 'package:diaryofflutter/app/ui/nav/controller/controller_nav.dart';
import 'package:get/get.dart';

class BindingNav implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerNav());
  }

}