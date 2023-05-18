import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/Home/HomeView.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/STT/SpeechToTextView.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/Home/HomeController.dart';

class SecondView extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(title: Text("Speech To Text")),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(onPressed: () async{
              var data = await Get.to(
                      () => SpeechToTextView(),
                  transition: Transition.leftToRight,
                  duration: Duration(seconds: 1),
                  arguments: "Hello world from get.to"
              );
            }, child: Text("Get to Next Page")),

            ElevatedButton(onPressed: () {
              Get.to(HomeView());
            }, child: Text("Get To Next Page")),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Get Back")),
          ])),
    );
  }
}
