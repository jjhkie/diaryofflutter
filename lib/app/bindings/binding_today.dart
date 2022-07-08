



import 'package:diaryofflutter/app/ui/today/controller/controller_today.dart';
import 'package:get/get.dart';

class BindingToday implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerToday());
  }

}