


import 'package:diaryofflutter/app/data/database.dart';
import 'package:diaryofflutter/app/data/diary.dart';
import 'package:diaryofflutter/app/data/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerToday extends GetxController{

  final dbHelper = DatabaseHelper.instance;
  Diary? todayDiary;

  getTodayDiary() async {
    print('1-------');
    List<Diary> diary = await dbHelper.getDiaryByDate(Utils.getFormatTime(DateTime.now()));
    print('-------');
    print(diary);
    if (diary.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        todayDiary = diary.first;
        update();
      });
    }
  }


  @override
  void onInit() {
    super.onInit();
    getTodayDiary();
    print('기다리는중');
  }


  List<String> statusImages = [
    "assets/img/ico-weather.png",
    "assets/img/ico-weather_2.png",
    "assets/img/ico-weather_3.png",
  ];


}