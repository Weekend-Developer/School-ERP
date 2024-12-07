import 'package:flutter/material.dart';

class BirthdayScreen extends StatelessWidget {
  final String todayDate = "December 7, 2024"; // Update to current date dynamically if needed

  final List<Map<String, String>> students = [
    {
      'name': 'John Doe',
      'class': '10th Grade',
      'photo': 'https://via.placeholder.com/150?text=Student', // Replace with actual image path
    },
    {
      'name': 'Alice Smith',
      'class': '9th Grade',
      'photo': 'https://via.placeholder.com/150?text=Student',
    },
  ];

  final List<Map<String, String>> staff = [
    {
      'name': 'Mr. Robert Brown',
      'department': 'Mathematics',
      'photo': 'https://via.placeholder.com/150?text=Staff', // Replace with actual image path
    },
    {
      'name': 'Ms. Emma Wilson',
      'department': 'Science',
      'photo': 'https://via.placeholder.com/150?text=Staff',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Birthdays'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Students'),
              Tab(text: 'Staff'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildStudentSection(),
            _buildStaffSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildStudentSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Today: $todayDate",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(student['photo']!),
                  ),
                  title: Text(student['name']!),
                  subtitle: Text(student['class']!),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildStaffSection() {
    return ListView.builder(
      itemCount: staff.length,
      itemBuilder: (context, index) {
        final staffMember = staff[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(staffMember['photo']!),
            ),
            title: Text(staffMember['name']!),
            subtitle: Text(staffMember['department']!),
          ),
        );
      },
    );
  }
}