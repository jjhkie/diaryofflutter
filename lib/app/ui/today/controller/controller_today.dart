


import 'package:diaryofflutter/app/data/database.dart';
import 'package:diaryofflutter/app/data/diary.dart';
import 'package:diaryofflutter/app/data/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerToday extends GetxController{

  final dbHelper = DatabaseHelper.instance;
  late Diary todayDiary = Diary(title: '', memo: '', image: 'assets/img/b1.jpg', status: 0, date: Utils.getFormatTime(DateTime.now()));

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
    } else {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        todayDiary = Diary(
            title: '',
            memo: '',
            image: 'assets/img/b1.jpg',
            status: 0,
            date: Utils.getFormatTime(DateTime.now()));
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