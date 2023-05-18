import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'Routes.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/Home/HomeView.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/SecondScreen/SecondView.dart';
class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomeView()),
    GetPage(name: Routes.SECOND, page: () => SecondView()),
  ];
}