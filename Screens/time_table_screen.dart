import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  final Map<String, List<String>> timetable = {
    'Monday': List.generate(8, (index) => 'Lecture ${index + 1}'),
    'Tuesday': List.generate(8, (index) => 'Lecture ${index + 1}'),
    'Wednesday': List.generate(8, (index) => 'Lecture ${index + 1}'),
    'Thursday': List.generate(8, (index) => 'Lecture ${index + 1}'),
    'Friday': List.generate(8, (index) => 'Lecture ${index + 1}'),
    'Saturday': List.generate(7, (index) => 'Lecture ${index + 1}'),
  };

  TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Timetable'),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              for (var day in timetable.keys) Tab(text: day),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (var day in timetable.keys)
              TimetableDayView(
                day: day,
                lectures: timetable[day]!,
              ),
          ],
        ),
      ),
    );
  }
}

class TimetableDayView extends StatelessWidget {
  final String day;
  final List<String> lectures;

  TimetableDayView({super.key, required this.day, required this.lectures});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lectures.length + 1, // Adding 1 for lunch break
      itemBuilder: (context, index) {
        if (index == 4) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              color: Colors.yellow[100],
              child: ListTile(
                title: Center(
                  child: Text(
                    'Lunch Break',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        final lectureIndex = index > 4 ? index - 1 : index;
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text('${lectureIndex + 1}'),
            ),
            title: Text(lectures[lectureIndex]),
            subtitle: Text('Time: ${getLectureTime(day, lectureIndex)}'),
          ),
        );
      },
    );
  }

  String getLectureTime(String day, int index) {
    final startHour = 9; // First lecture starts at 9 AM
    final duration = 1; // Each lecture is 1 hour
    final startTime = startHour + index * duration;
    return '${startTime}:00 - ${startTime + duration}:00';
  }
}
