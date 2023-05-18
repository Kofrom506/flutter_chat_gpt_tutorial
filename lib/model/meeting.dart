import 'package:flutter_chat_gpt_tutorial/model/comment.dart';
class Meetings{
   String? meetingTitle;
   String? recording;
   String? transcript;
   String? summarization;
   List<String>? toDoLists;
   Comment? comments;

  Meetings(String meetingTitle ,String recording ,String? transcript,String? summarization, List<String> toDoLists, Comment? comments){
    this.meetingTitle = meetingTitle;
    this.recording = recording;
    this.transcript = transcript;
    this.toDoLists = toDoLists;
    this.comments = comments;
  }

}