import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/STT/SpeechToTextView.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/Home/HomeController.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/SecondScreen/SecondView.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(title: Text("Home View")),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

              MeetingCard(),
              MeetingCard(),
              MeetingCard(),
              MeetingCard(),

        Spacer()

        // ElevatedButton(onPressed: () async{
        //   var data = await Get.to(
        //       () => SpeechToTextView(),
        //     transition: Transition.leftToRight,
        //     duration: Duration(seconds: 1),
        //     arguments: "Hello world from get.to"
        //   );
        // }, child: Text("Get to Next Page")),
        //
        // ElevatedButton(onPressed: () {
        //   Get.to(SecondView());
        // }, child: Text("Get To Next Page")),
        // ElevatedButton(onPressed: () {}, child: Text("Get toNamed Next Page")),
        // ElevatedButton(onPressed: () {}, child: Text("Get toNamed Next Page")),
      ]),
          )),
    );
  }
}

class MeetingCard extends StatelessWidget {
  const MeetingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Meeting Internship 1',
                style: TextStyle(fontSize: 25)),
            Text('“Developing STT using Telkom API”', style: TextStyle(fontSize: 10),),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Text(""),
                  ),
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          child: FaIcon(FontAwesomeIcons.person),
                          foregroundColor: Colors.deepOrange,
                          backgroundColor: Colors.yellow,
                        ),
                        CircleAvatar(
                          child: FaIcon(FontAwesomeIcons.person),
                          foregroundColor: Colors.deepOrange,
                          backgroundColor: Colors.yellow,
                        ),
                        CircleAvatar(
                          child: FaIcon(FontAwesomeIcons.person),
                          foregroundColor: Colors.deepOrange,
                          backgroundColor: Colors.yellow,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                FaIcon(FontAwesomeIcons.check),

                Text("25 Mei 2023 | 04.22 PM"),
                Spacer(),
              ],
            ),
            Row(
              children: [
                FaIcon(FontAwesomeIcons.check),
                Text("1 Comments"),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
