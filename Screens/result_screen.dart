import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> exams = ['SA1', 'SA2', 'Final'];
  final Map<String, Map<String, dynamic>> results = {
    'SA1': {
      'photoUrl': 'https://via.placeholder.com/150',
      'name': 'John Doe',
      'marks': 350,
      'total': 500,
      'percentage': 70.0,
      'grade': 'B',
    },
    'SA2': {
      'photoUrl': 'https://via.placeholder.com/150',
      'name': 'John Doe',
      'marks': 400,
      'total': 500,
      'percentage': 80.0,
      'grade': 'A',
    },
    'Final': {
      'photoUrl': 'https://via.placeholder.com/150',
      'name': 'John Doe',
      'marks': 450,
      'total': 500,
      'percentage': 90.0,
      'grade': 'A+',
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: ExamListScreen(
        exams: exams,
        results: results,
      ),
    );
  }
}

class ExamListScreen extends StatelessWidget {
  final List<String> exams;
  final Map<String, Map<String, dynamic>> results;

  ExamListScreen({required this.exams, required this.results});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: exams.length,
      itemBuilder: (context, index) {
        final exam = exams[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 4,
          child: ListTile(
            title: Text(
              exam,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExamResultScreen(
                    exam: exam,
                    result: results[exam]!,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class ExamResultScreen extends StatelessWidget {
  final String exam;
  final Map<String, dynamic> result;

  ExamResultScreen({required this.exam, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$exam Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(result['photoUrl']),
            ),
            SizedBox(height: 16),
            Text(
              result['name'],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ResultCard(
              title: 'Marks',
              value: '${result['marks']} / ${result['total']}',
            ),
            ResultCard(
              title: 'Percentage',
              value: '${result['percentage']}%',
            ),
            ResultCard(
              title: 'Grade',
              value: result['grade'],
            ),
          ],
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  final String title;
  final String value;

  ResultCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}