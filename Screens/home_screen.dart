import 'package:demo_erp/Screens/Home%20Work/home_work_screen.dart';
import 'package:demo_erp/Screens/attendence_screen.dart';
import 'package:demo_erp/Screens/birthday_screen.dart';
import 'package:demo_erp/Screens/calender_screen.dart';
import 'package:demo_erp/Screens/event_screen.dart';
import 'package:demo_erp/Screens/exam_timetable.dart';
import 'package:demo_erp/Screens/fee_screen.dart';
import 'package:demo_erp/Screens/my_class_screen.dart';
import 'package:demo_erp/Screens/news_screen.dart';
import 'package:demo_erp/Screens/result_screen.dart';
import 'package:demo_erp/Screens/time_table_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Hi, Weekend Developers"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
                child: GridView.builder(
                  itemCount: homeItem.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => homeItem[index]["navigate"],)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(homeItem[index]["icon"]),
                        Text(homeItem[index]["text"])
                      ],
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


List homeItem = [
  {
    "icon" : Icons.info,
    "text" : "Info desk",
    "navigate" : InfoScreen()
  },
  {
    "icon" : Icons.calendar_month,
    "text" : "Calender",
    "navigate" : CalenderScreen()
  },
  {
    "icon" : Icons.check,
    "text" : "Attendance",
    "navigate" : AttendanceScreen()
  },
  {
    "icon" : Icons.money,
    "text" : "Fees",
    "navigate" : FeeScreen()
  },
  {
    "icon" : Icons.menu_book,
    "text" : "Home Work",
    "navigate" : HomeWorkScreen()
  },
  {
    "icon" : Icons.calendar_today,
    "text" : "Time Table",
    "navigate" : TimetableScreen()
  },
  {
    "icon" : Icons.book,
    "text" : "Result",
    "navigate" : ResultScreen()
  },
  {
    "icon" : Icons.photo,
    "text" : "Gallery",
    "navigate" : EventScreen()
  },
  {
    "icon" : Icons.person,
    "text" : "My Class",
  "navigate" : MyClassScreen()
  },
  {
    "icon" : Icons.newspaper,
    "text" : "News",
    "navigate" : NewsScreen()
  },
  {
    "icon" : Icons.cake,
    "text" : "Birthday",
    "navigate" : BirthdayScreen()
  },
  {
    "icon" : Icons.edit_note,
    "text" : "Exam TimeTable",
    "navigate" : ExamTimetableScreen()
  },
];