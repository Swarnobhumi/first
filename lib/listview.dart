import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  List<Map<String, dynamic>> contacts = [
    {
      "name": "Aritra Ghosh",
      "phone": "+9112345678",
      "email": "john.jay@example.com",
    },
    {
      "name": "Soumya Ghosh",
      "phone": "+9112345678",
      "email": "james.monroe@examplepetstore.com",
    },
    {
      "name": "Anubhab Sen",
      "phone": "+9112345678",
      "email": "james.wilson@example-pet-store.com",
    },
    {
      "name": "Anubhab Sen",
      "phone": "+9112345678",
      "email": "james.wilson@example-pet-store.com",
    },
    {
      "name": "Anubhab Sen",
      "phone": "+9112345678",
      "email": "james.wilson@example-pet-store.com",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                 topLeft: index==0?Radius.circular(30):Radius.circular(0),
                 topRight: index==0?Radius.circular(30):Radius.circular(0),
                 bottomLeft: contacts.length-1==index?Radius.circular(30):Radius.circular(0),
                 bottomRight: contacts.length-1==index?Radius.circular(30):Radius.circular(0)

                ),
                color: index%2!=0?Colors.lightBlue:Colors.orangeAccent,
              ),
              child: Row(
                children: [
                  SizedBox(width: 30),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/google_icon.png"),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(contacts[index]["name"]),
                      Text(contacts[index]["phone"]),
                    ],
                  ),
                  IconButton(
                    onPressed: (){
                      Clipboard.setData(ClipboardData(text: contacts[index]["name"]));
                    },
                    icon: Icon(Icons.copy),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
