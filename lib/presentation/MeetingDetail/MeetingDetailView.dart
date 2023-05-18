import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/STT/SpeechToTextView.dart';
import 'package:flutter_chat_gpt_tutorial/widget/IconTitleSubtitleCard.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/Home/HomeController.dart';
import 'package:flutter_chat_gpt_tutorial/presentation/SecondScreen/SecondView.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MeetingDetailView extends StatelessWidget {
  const MeetingDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meeting Detail View")),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Meeting Internship 1 ",
          style: Theme.of(context).textTheme.headline4,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "25 May 2023 | 12.30 PM",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
        Text(
          "Participant",
          style: Theme.of(context).textTheme.headline6,
        ),
        Row(
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
          ],
        ),
        Text(
          "Recordings",
          style: Theme.of(context).textTheme.headline6,
        ),
        IconTitleSubtitleCard(
            icon: Icons.play_circle_filled,
            title: "Meeting Sabtu Pagi DSC",
            subtitle: "24 May 2023 | 04.22 pm"),
        Text(
          "Transcript",
          style: Theme.of(context).textTheme.headline6,
        ),
        IconTitleSubtitleCard(
            icon: Icons.description,
            title: "Meeting Sabtu Pagi DSC",
            subtitle: "24 May 2023 | 04.22 pm"),
        Text(
          "Summarization",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "“Developing STT using Telkom API”",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "In the meeting, the project team provided a concise update on the current status of the project. They discussed the progress made since the previous meeting, highlighting key milestones achieved and addressing any challenges faced. The team expressed confidence in the project's overall direction and outlined next steps to ensure its successful completion.",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          "To Do List",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "To Do List",
          style: Theme.of(context).textTheme.headline5,
        )
      ]),
    );
  }
}
