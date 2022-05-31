// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lumos_task_2/info.dart';
import 'package:lumos_task_2/submissions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lumos task 2',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'lumos task 2'),
        '/submissions': (context) => Submission(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This is a Map that contains details of all the questions and answers and points gained in each question of a particular person
    Map parvMap = {
      1: {
        "question":
            "Lorem ipsum dolor sit amet. Aut sequi similique qui ipsam illum est molestias saepe. Non ratione quia id ullam fugit ut totam repellendus est debitis rerum eos expedita delectus sit accusantium quia ut vero aperiam. Et labore eius ex voluptatibus sunt est enim molestiae et obcaecati blanditiis et cupiditate ducimus ut labore consectetur.",
        "answer":
            "Lorem ipsum dolor sit amet. Aut sequi similique qui ipsam illum est molestias saepe. Non ratione quia id ullam fugit ut totam repellendus est debitis rerum eos expedita delectus sit accusantium quia ut vero aperiam. Et labore eius ex voluptatibus sunt est enim molestiae et obcaecati blanditiis et cupiditate ducimus ut labore consectetur.",
        "correct_answer":
            "Lorem ipsum dolor sit amet. Aut sequi similique qui ipsam illum est molestias saepe. Non ratione quia id ullam fugit ut totam repellendus est debitis rerum eos expedita delectus sit accusantium quia ut vero aperiam. Et labore eius ex voluptatibus sunt est enim molestiae et obcaecati blanditiis et cupiditate ducimus ut labore consectetur.",
        "points": 0,
      },
      2: {
        "question":
            "Lorem ipsum dolor sit amet. Aut sequi similique qui ipsam illum est molestias saepe. Non ratione quia id ullam fugit ut totam repellendus est debitis rerum eos expedita delectus sit accusantium quia ut vero aperiam. Et labore eius ex voluptatibus sunt est enim molestiae et obcaecati blanditiis et cupiditate ducimus ut labore consectetur.",
        "answer":
            "Lorem ipsum dolor sit amet. Aut sequi similique qui ipsam illum est molestias saepe. Non ratione quia id ullam fugit ut totam repellendus est debitis rerum eos expedita delectus sit accusantium quia ut vero aperiam. Et labore eius ex voluptatibus sunt est enim molestiae et obcaecati blanditiis et cupiditate ducimus ut labore consectetur.",
        "correct_answer":
            "Lorem ipsum dolor sit amet. Aut sequi similique qui ipsam illum est molestias saepe. Non ratione quia id ullam fugit ut totam repellendus est debitis rerum eos expedita delectus sit accusantium quia ut vero aperiam. Et labore eius ex voluptatibus sunt est enim molestiae et obcaecati blanditiis et cupiditate ducimus ut labore consectetur.",
        "points": 0,
      },
      3: {
        "question":
            "Lorem ipsum dolor sit amet. Aut sequi similique qui ipsam illum est molestias saepe. Non ratione quia id ullam fugit ut totam repellendus est debitis rerum eos expedita delectus sit accusantium quia ut vero aperiam. Et labore eius ex voluptatibus sunt est enim molestiae et obcaecati blanditiis et cupiditate ducimus ut labore consectetur.",
        "answer":
            "Lorem ipsum dolor sit amet. Aut sequi similique qui ipsam illum est molestias saepe. Non ratione quia id ullam fugit ut totam repellendus est debitis rerum eos expedita delectus sit accusantium quia ut vero aperiam. Et labore eius ex voluptatibus sunt est enim molestiae et obcaecati blanditiis et cupiditate ducimus ut labore consectetur.",
        "correct_answer":
            "Lorem ipsum dolor sit amet. Aut sequi similique qui ipsam illum est molestias saepe. Non ratione quia id ullam fugit ut totam repellendus est debitis rerum eos expedita delectus sit accusantium quia ut vero aperiam. Et labore eius ex voluptatibus sunt est enim molestiae et obcaecati blanditiis et cupiditate ducimus ut labore consectetur.",
        "points": 0,
      },
    };
    // The details are arranged and put together in a custom class created, it helps in making the widget with appropriate details easier
    PersonInfo parvKohliInfo = PersonInfo(
        name: "PARV KOHLI",
        points: pointsCalc(mp: parvMap), // This is a method called to calculate total points from the given data
        answers: parvMap.length,
        qinfo: parvMap);
    return Scaffold(
      backgroundColor: Color(0xff1b1f3c),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              parvKohliInfo.name,
              style: GoogleFonts.manrope(
                fontSize: 45,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 60),
                  child: Row(
                    children: [
                      Container(
                        width: 119,
                        height: 120,
                        margin: EdgeInsets.only(
                          right: 15,
                        ),
                        color: Color.fromRGBO(253, 73, 130, 1),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${parvKohliInfo.answers} Questions Answered\n\n${parvKohliInfo.points} points scored\n",
                            style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/submissions',
                                arguments: {'data': parvKohliInfo},
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  "View Sumbissions",
                                  style: GoogleFonts.ubuntu(
                                    color: Color(0xff017EA7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
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
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(
                              "Bookmark your favourite blogs from the Technical Prophet\n",
                              textAlign: TextAlign.end,
                              style: GoogleFonts.ubuntu(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  "View Bookmarks",
                                  style: GoogleFonts.ubuntu(
                                    color: Color(0xff017EA7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
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
                        ],
                      ),
                      Container(
                        width: 119,
                        height: 120,
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        color: Color.fromRGBO(82, 86, 254, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
