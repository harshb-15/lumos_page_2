// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lumos_task_2/qwidget.dart';

class Submission extends StatefulWidget {
  const Submission({Key key}) : super(key: key);

  @override
  State<Submission> createState() => _SubmissionState();
}

class _SubmissionState extends State<Submission> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xff1b1f3c),
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 13),
        child: ListView.builder(
          itemCount: data['data'].answers,
          itemBuilder: (context, index) => Qwidget(
            question: data['data'].qinfo[index + 1]["question"],
            answer: data['data'].qinfo[index + 1]["answer"],
            correctAnswer: data['data'].qinfo[index + 1]["correct_answer"],
            points: data['data'].qinfo[index + 1]["points"],
          ),
        ),
      ),
    );
  }
}
