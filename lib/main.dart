import 'package:flutter/material.dart';

import 'student.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  List<Student> students = [
    Student(name: 'Ahmad Tamimi',id: '03/0577'),
    Student(name: 'Tala Hamed',id: '20/1177'),
    Student(name: 'Hana Mohammad',id: '19/1510'),
    Student(name: 'Mutasem Alheeh',id: '03/0177'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.cyan,
          appBar: AppBar(
            title: Text('Student App'),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              StudentCard(students[0]),
              StudentCard(students[1]),
              StudentCard(students[2]),
              StudentCard(students[3]),
            ],
          ),
        )
    );
  }
}

class StudentCard extends StatelessWidget {
  final Student std;

  StudentCard(this.std);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 150.0,
        child: Card(
          elevation: 10.0,
          color: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Name: ', style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                            Text(this.std.name, style: TextStyle(fontSize: 22,letterSpacing: 2.0),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Id: ', style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                            Text(this.std.id, style: TextStyle(fontSize: 22,letterSpacing: 2.0),),
                          ],
                        ),
                      ],
                    ),
                    //Image.asset('images/anonymous.jpg',width: 40,height: 40,),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/anonymous.jpg'),
                      radius: 40.0,
                    )
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('tap to show details'),
                    Icon(Icons.navigate_next,size: 30,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}