import 'package:flutter/material.dart';
import 'package:flutter_chat_gpt_tutorial/model/model.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/MeetingDetail/MeetingDetailView.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/STT/SpeechToTextView.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'presentation/Home/HomeView.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MeetingDetailView(),
    );
  }
}
