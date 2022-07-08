



import 'package:diaryofflutter/app/ui/write/controller/controller_write.dart';
import 'package:get/get.dart';

class BindingWrite implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerWrite());
  }

}