import 'package:diaryofflutter/app/data/database.dart';
import 'package:diaryofflutter/app/data/diary.dart';
import 'package:diaryofflutter/app/data/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerWrite extends GetxController {
  /** 이미지 관련 코드*/
  RxInt imgIndex = 0.obs;
  List<String> images = [
    "assets/img/b1.jpg",
    "assets/img/b2.jpg",
    "assets/img/b3.jpg",
    "assets/img/b4.jpg"
  ];

  imageChange() {
    print('aaa');
    imgIndex++;
    imgIndex.value = imgIndex.value % images.length;
  }

  int dateValue = Utils.getFormatTime(DateTime.now());
  /** 상태 관련  코드*/

  RxInt statusImgIndex = 0.obs;

  List<String> statusImages = [
    "assets/img/ico-weather.png",
    "assets/img/ico-weather_2.png",
    "assets/img/ico-weather_3.png",
  ];

  statusImageSelect(index) {
    statusImgIndex.value = index;
    print(statusImgIndex.value);
  }

  /**제목 관련 코드 */
  var nameController = TextEditingController();

  /**메모 관련 코드 */
  var memoController = TextEditingController();

  /** DB 관련 코드*/
  final dbHelper = DatabaseHelper.instance;

  insertDiary() async {
    await dbHelper.insertDiary(Diary(
        title: nameController.text,
        memo: memoController.text,
        image: images[imgIndex.value],
        status: statusImgIndex.value,
        date: dateValue));
    Get.back();
  }
}
