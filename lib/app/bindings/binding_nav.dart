


import 'package:diaryofflutter/app/ui/nav/controller/controller_nav.dart';
import 'package:diaryofflutter/app/ui/today/controller/controller_today.dart';
import 'package:get/get.dart';

class BindingNav implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerNav());
    Get.lazyPut(() => ControllerToday());
  }

}