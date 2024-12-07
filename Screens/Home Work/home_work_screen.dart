import 'package:demo_erp/Screens/Home%20Work/home_work_details_screen.dart';
import 'package:flutter/material.dart';

class HomeWorkScreen extends StatelessWidget {
  const HomeWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Home Work"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.grey.shade700,
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeWorkDetailsScreen(),
                    ),
                  ),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(15),
                      border: Border(
                        left: BorderSide(
                          color: Colors.blue,
                          width: 10,
                        ),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        "English",
                      ),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "06/12/2024",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Assigned",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.,
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Akhil Sodvadiya")
                                ],
                              ),
                              Text(
                                "Submit On 07/12/2024",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
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
