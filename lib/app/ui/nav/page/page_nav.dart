import 'package:diaryofflutter/app/ui/chart/page/page_chart.dart';
import 'package:diaryofflutter/app/ui/history/page/page_history.dart';
import 'package:diaryofflutter/app/ui/nav/controller/controller_nav.dart';
import 'package:diaryofflutter/app/ui/today/page/page_today.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageNav extends GetView<ControllerNav> {
  const PageNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          switch (RouteName.values[controller.selectIndex.value]) {
            case RouteName.today:
              return PageToday();
            case RouteName.history:
              return PageHistory();
            case RouteName.chart:
              return PageChart();
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.redAccent,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.today,
                    color: Colors.white,
                  ),
                  onPressed: () => controller.changePageIndex(0)),
              IconButton(
                  icon: Icon(
                    Icons.calendar_today_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () => controller.changePageIndex(1)),
              Padding(
                  padding: EdgeInsets.only(right: 90),
                  child: IconButton(
                    icon: Icon(
                      Icons.insert_chart,
                      color: Colors.white,
                    ),
                    onPressed: () => controller.changePageIndex(2),
                  ))
            ],
          ),
        ),
      ),
    );
  }

}
