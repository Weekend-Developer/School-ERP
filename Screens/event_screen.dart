import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  final List<String> events = [
    'Rajasthan Tour',
    'Annual Day',
    'Sports Day',
  ];

  final Map<String, List<String>> eventImages = {
    'Rajasthan Tour': [
      'https://via.placeholder.com/300?text=Rajasthan+Tour+1',
      'https://via.placeholder.com/300?text=Rajasthan+Tour+2',
      'https://via.placeholder.com/300?text=Rajasthan+Tour+3',
    ],
    'Annual Day': [
      'https://via.placeholder.com/300?text=Annual+Day+1',
      'https://via.placeholder.com/300?text=Annual+Day+2',
      'https://via.placeholder.com/300?text=Annual+Day+3',
    ],
    'Sports Day': [
      'https://via.placeholder.com/300?text=Sports+Day+1',
      'https://via.placeholder.com/300?text=Sports+Day+2',
      'https://via.placeholder.com/300?text=Sports+Day+3',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: EventListScreen(
        events: events,
        eventImages: eventImages,
      ),
    );
  }
}

class EventListScreen extends StatelessWidget {
  final List<String> events;
  final Map<String, List<String>> eventImages;

  EventListScreen({required this.events, required this.eventImages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 4,
          child: ListTile(
            title: Text(
              event,
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
                  builder: (context) => EventDetailScreen(
                    event: event,
                    images: eventImages[event]!,
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

class EventDetailScreen extends StatelessWidget {
  final String event;
  final List<String> images;

  EventDetailScreen({required this.event, required this.images});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$event Photos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                images[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}