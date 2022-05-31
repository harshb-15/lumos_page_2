// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Qwidget extends StatelessWidget {
  final String question, answer, correctAnswer;
  final int points;
  Qwidget(
      {@required this.question,
      @required this.answer,
      @required this.correctAnswer,
      @required this.points});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 13),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff2b2b41),
        border: Border.all(
          color: Color(0xff5256FE),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Card(
        color: Color(0xff2b2b41),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "QUESTION",
                style: GoogleFonts.ubuntu(
                  color: Color(0xff017EA7),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                question.substring(0, 91),
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "YOUR ANSWER",
                style: GoogleFonts.ubuntu(
                  color: Color(0xff017EA7),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                answer.substring(0, 91),
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "EXPECTED ANSWER",
                style: GoogleFonts.ubuntu(
                  color: Color(0xff017EA7),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                correctAnswer.substring(0, 91),
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      "Read more",
                      style: GoogleFonts.ubuntu(
                        color: Color(0xff017EA7),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.double_arrow,
                      size: 16,
                      color: Color(0xff017EA7),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "$points points",
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
