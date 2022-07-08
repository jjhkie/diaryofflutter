import 'package:diaryofflutter/app/ui/today/controller/controller_today.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageToday extends GetView<ControllerToday> {
  const PageToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (controller.todayDiary == null) {
      return Container(
        child: Text('작성한 일기가 없습니다.'),
      );
    }
    return Container(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(controller.todayDiary!.image, fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${controller.todayDiary!.date}"),
                    Image.asset(
                        controller.statusImages[controller.todayDiary!.status],
                        fit: BoxFit.contain)
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.todayDiary!.title,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12),
                      Text(controller.todayDiary!.memo)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
