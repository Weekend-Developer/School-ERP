import 'package:flutter/material.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

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
          SizedBox(height: 15,),
          Expanded(
              child: ListView.builder(
                itemCount: 3,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                leading: Text(
                  "02\nDec",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                title: Text(
                  "Diwali",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("Holiday"),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
