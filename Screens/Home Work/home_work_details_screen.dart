import 'package:flutter/material.dart';

class HomeWorkDetailsScreen extends StatelessWidget {
  const HomeWorkDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Homw Work Details"),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("English"),
                subtitle: Text("Submit On 07/12/2024"),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Assigned",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.blue.shade300)),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Akhil Sodvadiya"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "07/12/2024",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Classwork"),
                subtitle: Text("No"),
                trailing: Icon(Icons.copy),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Homw Work"),
                subtitle: Text("Lession:6 PHP CRUD Api"),
                trailing: Icon(Icons.copy),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
