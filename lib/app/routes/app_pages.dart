import 'package:diaryofflutter/app/bindings/binding_nav.dart';
import 'package:diaryofflutter/app/bindings/binding_write.dart';

import 'package:diaryofflutter/app/routes/app_routes.dart';
import 'package:diaryofflutter/app/ui/nav/page/page_nav.dart';
import 'package:diaryofflutter/app/ui/write/page/page_write.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => PageNav(), binding: BindingNav()),
    GetPage(
        name: Routes.WRITE,
        page: () => PageWrite(),
        binding: BindingWrite()),
  ];
}
