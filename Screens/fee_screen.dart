import 'package:flutter/material.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fees"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("Total Fees : 23200",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Due Fees : 11600",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Total Fees : 11600",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Expanded(
                child: ListView.builder(
                  itemCount: feeItems.length,
                  itemBuilder: (context, index) => Card(
                    child: ListTile(
                      leading: Icon(feeItems[index]["icon"]),
                      title: Text(
                        feeItems[index]["text"],
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

List feeItems = [
  {
    "icon" : Icons.credit_card,
    "text" : "Pay Online",

  },
  {
    "icon" : Icons.money,
    "text" : "View Receipt",
  },
  {
    "icon" : Icons.receipt,
    "text" : "Fees Invoice",
  },
];