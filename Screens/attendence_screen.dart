import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calender"),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.grey.shade700,
          ),
          Container(
            height: 300,
            color: Colors.grey,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 16/9),
            itemCount: 6,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(
                  "4",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  "Present",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
