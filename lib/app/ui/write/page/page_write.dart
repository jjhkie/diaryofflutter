import 'package:diaryofflutter/app/data/diary.dart';
import 'package:diaryofflutter/app/ui/write/controller/controller_write.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageWrite extends GetView<ControllerWrite> {
  PageWrite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: ()=>controller.insertDiary(),
                child: Text("저장", style: TextStyle(color: Colors.white))),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              InkWell(
                onTap: () => controller.imageChange(),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  height: 100,
                  child: Obx(() => Image.asset(
                      controller.images[controller.imgIndex.value],
                      fit: BoxFit.cover)),
                ),
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                        controller.statusImages.length,
                        (index) => InkWell(
                              onTap: () => controller.statusImageSelect(index),
                              child: Obx(() => Container(
                                    width: 70,
                                    height: 70,
                                    child: Image.asset(
                                      controller.statusImages[index],
                                      fit: BoxFit.contain,
                                    ),
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: index ==
                                                    controller
                                                        .statusImgIndex.value
                                                ? Colors.blue
                                                : Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  )),
                            ))),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("제목", style: TextStyle(fontSize: 20)),
                      TextField(controller: controller.nameController)
                    ],
                  )),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("내용", style: TextStyle(fontSize: 20)),
                      SizedBox(height: 10),
                      TextField(
                        controller: controller.memoController,
                        minLines: 10,
                        maxLines: 20,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
