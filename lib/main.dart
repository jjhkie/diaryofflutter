import 'package:diaryofflutter/app/routes/app_pages.dart';
import 'package:diaryofflutter/app/routes/app_routes.dart';
import 'package:diaryofflutter/app/translations/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: Routes.INITIAL,
    getPages:AppPages.pages,
    locale: Locale('ko','KR'),
    translationsKeys: AppTranslation.translations,
  ));
}

