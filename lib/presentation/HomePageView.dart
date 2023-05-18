import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_chat_gpt_tutorial/model/model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class MyHomePage extends StatefulWidget {

  String? studentName, studentID, studentProgramID;
  double? studentGPA;
  MyHomePage(String studentName, String studentID, String studentProgramID,
      double studentGPA) {
    this.studentName = studentName;
    this.studentID = studentID;
    this.studentProgramID = studentProgramID;
    this.studentGPA = studentGPA;
  }
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Firebase App")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text("Evan"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  onChanged: (value) => widget.studentName = value,
                  decoration: InputDecoration(
                      labelText: "Name",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blue, width: 2.0)))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  onChanged: (value) => widget.studentID = value,
                  decoration: InputDecoration(
                      labelText: "Student ID",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blue, width: 2.0)))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  onChanged: (value) => widget.studentProgramID = value,
                  decoration: InputDecoration(
                      labelText: "Student Program",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blue, width: 2.0)))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  onChanged: (value) => widget.studentGPA = double.parse(value),
                  decoration: InputDecoration(
                      labelText: "GPA",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blue, width: 2.0)))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  Firebase.initializeApp();
                  createData();
                  print(widget.studentName);
                }, child: Container(child: Text("Create"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),)),),
                ElevatedButton(onPressed: () => print("Red"), child: Container(child: Text("Read"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),)),),
                ElevatedButton(onPressed: () => print("Deleted"), child: Container(child: Text("Delete"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),)),),
                ElevatedButton(onPressed: () => print("Updated"), child: Container(child: Text("Update"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),)),),

              ],
            )
          ]),
        ));



  }
  void createData(){
    FirebaseFirestore.instance.collection("MyStudents").doc(widget.studentName);
    Map<String, dynamic> json = {
      "studentName": widget.studentName,
      "studentGPA": widget.studentGPA,
      "studentID": widget.studentID,
      "studentProgramID": widget.studentProgramID,
    };
  }

// Future<Student> createName() async{
//   final docUser = FirebaseFirestore.instance.collection('MyStudents').doc();
//   final user = Student("name", "studentId", "studentProgram", 30);
//   final json = user.toJson;
//
//   await docUser.set();
//
// }
}
