import 'package:flutter/material.dart';

void main() => runApp(NameGenApp());

class NameGenApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: NameGenHome(),
    );
  }
}

class NameGenHome extends StatefulWidget {
  @override
  _NameGenHomeState createState() => _NameGenHomeState();
}

class _NameGenHomeState extends State<NameGenHome> {
  String name = "";
  int level = 0;
  String mail = "";
  List<String> comments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Genarator Tutorial"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            name = "Test name";
            level += 1;
            mail = "email@test.com";
            comments.add('Test comment $level');
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja_icon.png'),
                backgroundColor: Colors.blueGrey[300],
                radius: 40.0,
              ),
            ),
            Divider(
              height: 40.0,
                color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey[600],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$name',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Level',
              style: TextStyle(
                color: Colors.grey[600],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[500],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '$mail',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    letterSpacing: 2.5,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Column(
              children: comments.map((comment) => Text(comment)).toList(),
              crossAxisAlignment: CrossAxisAlignment.start,
              ),
          ],
        ),
      ),
    );
  }
}
